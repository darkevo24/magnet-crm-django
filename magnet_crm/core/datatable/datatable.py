from collections import namedtuple
import operator
from django.db.models import Q
from functools import reduce
from django.urls import reverse
from client.models import Client_Staff

order_dict = {'asc': '', 'desc': '-'}
SOURCE_2_SEARCH_MAPPING_STR = {
    'adwords' : '0',
    'facebook/ig' : '1',
    'social media' : '2',
    'email' : '3',
    'google' : '4',
    'discord' : '5',
}

SEARCH_SOURCE_LIST = ['adwords', 'facebook/ig', 'social media', 'google', 'discord']

class DataTablesServer(object):
    def __init__(self, request, columns, qs, is_delete_data):
        self.is_delete_data = is_delete_data
        self.columns = columns
        # values specified by the datatable for filtering, sorting, paging
        self.request_values = request.GET
        # results from the db
        self.result_data = None
        self.client_staff = None
        self.client_staff_ids = None
        self.client_staff_dict = {}
        self.client_ids = []
        # total in the table after filtering
        self.cardinality_filtered = 0
        # total in the table unfiltered
        self.cardinality = 0
        self.user = request.user
        self.qs = qs
        self.columns_database = []
        self.run_queries()

    def output_result(self):
        output = dict()
        output['sEcho'] = str(int(self.request_values['sEcho']))
        output['iTotalRecords'] = str(self.qs.count())
        output['iTotalDisplayRecords'] = str(self.cardinality_filtered)
        data_rows = []
        SOURCE_DETAIL_2_STR = {
            '0' : 'Adwords',
            '1' : 'Facebook/IG',
            '2' : 'Social Media',
            '3' : 'Email',
            '4' : 'Google',
            '5' : 'Discord',
        }
        
        for row in self.result_data:
            data_row = []
            client_staff_column = '-'
            client_id = ''
            for i in range(len(self.columns)):
                # val = getattr(row, self.columns[i])
                
                
                if 'created_at' in self.columns[i]:
                    if row[self.columns[i]] != None and row[self.columns[i]] != '':
                        val =  row[self.columns[i]].strftime('%Y-%m-%d %H:%M')
                    else:
                        val = row[self.columns[i]]
                elif 'source_detail_2' in self.columns[i]:
                    if row[self.columns[i]] != None and row[self.columns[i]] != '':
                        val = SOURCE_DETAIL_2_STR[row[self.columns[i]]]
                    else:
                        val = row[self.columns[i]]
                elif 'id' in self.columns[i]:
                    client_detail_url = reverse('client-detail-list', kwargs={'id_client': row[self.columns[i]]})
                    client_edit_url = reverse('client-edit', kwargs={'id_client': row[self.columns[i]]})
                    button_html = '<div class="list-icons"><div class="dropdown"><a href="#" class="list-icons-item" data-toggle="dropdown">'
                    button_html += ' <i class="icon-menu9" style="font-size: 1.8em"></i></a>'
                    button_html += '  <div class="dropdown-menu dropdown-menu-right">'
                    button_html += '<a href="' + client_detail_url +'" class="dropdown-item">'
                    button_html += ' <i class="icon-file-eye"></i> Client Detail</a>'
                    button_html += '<a href="' + client_edit_url + '" class="dropdown-item">'
                    button_html += ' <i class="fas fa-edit"></i> Client Edit</a>'

                    if self.is_delete_data == True:
                        button_html += '<span class="dropdown-item client-delete-single-btn" data-client_id="' + str(row[self.columns[i]]) +'">' 
                        button_html += '<i class="fas fa-trash-alt"></i> Client Delete</span>'
                    button_html += '</div></div></div>'
                    val = button_html

                    if row[self.columns[i]] in self.client_staff_dict:
                        client_staff_column = self.client_staff_dict[row[self.columns[i]]]
                        

                elif 'checkbox' in self.columns[i]:
                    client_id = row[self.columns[9]]
                    checkbox = '<input type="checkbox" class="checkbox-client-id" value="' + str(client_id) + '">'
                    val = checkbox
                else:
                    val = row[self.columns[i]]
                data_row.append(val)
            
            
                                                            
                                                        
                                                        
                                                            
                                                                

            data_row.append(client_staff_column)                                                
            data_rows.append(data_row)
        output['aaData'] = data_rows
        return output

    def run_queries(self):
        for column in self.columns:
            if 'checkbox' not in column:
                self.columns_database.append(column)
        # pages has 'start' and 'length' attributes
        pages = self.paging()
        # the term you entered into the datatable search
        _filter = self.filtering()
        print('run queries', _filter)
        # the document field you chose to sort
        sorting = self.sorting()
        # custom filter
        qs = self.qs
        

        if _filter:
            print(_filter, '<----')
            data = qs.filter(
                reduce(operator.or_, _filter)).order_by('%s' % sorting)
            len_data = data.count()
            data = list(data[pages.start:pages.length].values(*self.columns_database))
        else:
            data = qs.order_by('%s' % sorting).values(*self.columns_database)
            len_data = data.count()
            _index = int(pages.start)
            data = data[_index:_index + (pages.length - pages.start)]


        for d in data:
            self.client_ids.append(d['id'])

        client_staff_list = Client_Staff.objects.filter(client__id__in=self.client_ids, is_active=True).prefetch_related('client', 'staff', 'staff__profile')
        for client_staff in client_staff_list:
            if client_staff.client.id not in  self.client_staff_dict:
                self.client_staff_dict[client_staff.client.id] = client_staff.staff.profile.full_name

        
        self.result_data = list(data)

        # length of filtered set
        if _filter:
            self.cardinality_filtered = len_data
        else:
            self.cardinality_filtered = len_data
        self.cardinality = pages.length - pages.start

    def filtering(self):
        # build your filter spec
        or_filter = []

        if (self.request_values.get('sSearch')) and (self.request_values['sSearch'] != ""):
            for i in range(len(self.columns_database)):
                or_filter.append((self.columns_database[i]+'__icontains', self.request_values['sSearch']))

        if self.is_delete_data == False:
            if (self.request_values.get('sSearch_6')) and (self.request_values['sSearch_6'] != ""):
                matching_list = [s for s in SEARCH_SOURCE_LIST if self.request_values.get('sSearch_5').lower() in s]
                for matching in matching_list:
                    or_filter.append(('source_detail_2', SOURCE_2_SEARCH_MAPPING_STR[matching]))            
        else:
            if (self.request_values.get('sSearch_7')) and (self.request_values['sSearch_7'] != ""):
                matching_list = [s for s in SEARCH_SOURCE_LIST if self.request_values.get('sSearch_5').lower() in s]
                for matching in matching_list:
                    or_filter.append(('source_detail_2', SOURCE_2_SEARCH_MAPPING_STR[matching]))            

        q_list = [Q(x) for x in or_filter]
        
        return q_list

    def sorting(self):

        order = ''
        if (self.request_values['iSortCol_0'] != "") and (int(self.request_values['iSortingCols']) > 0):
            for i in range(int(self.request_values['iSortingCols'])):
                # column number
                column_number = int(self.request_values['iSortCol_' + str(i)])
                # sort direction
                sort_direction = self.request_values['sSortDir_' + str(i)]

                order = ('' if order == '' else ',') +order_dict[sort_direction]+self.columns[column_number]
        else:
            order = '-created_at'
        return order

    def paging(self):

        pages = namedtuple('pages', ['start', 'length'])

        if (self.request_values['iDisplayStart'] != "") and (self.request_values['iDisplayLength'] != -1):
            pages.start = int(self.request_values['iDisplayStart'])
            pages.length = pages.start + int(self.request_values['iDisplayLength'])

        return pages