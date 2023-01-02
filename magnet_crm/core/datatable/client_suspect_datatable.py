from collections import namedtuple
import operator
from django.db.models import Q
from functools import reduce
from django.urls import reverse
from client.models import Client_Staff, Client

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

class ClientSuspectDataTablesServer(object):
    def __init__(self, request, columns, qs, filter_date):
        print('masuk serverside')
        self.filter_date = filter_date
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
        self.query_result = None
        
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

        client_id_dict = {}
        for row in self.result_data:
            data_row = []

            # print('>>>',row)
            print('client_old__nama', row)
            checkbox_html = '<input type="checkbox" class="checkbox-client-suspect-id" value="' + str(row['id']) + '">'
            data_row.append(checkbox_html)
            # Column Name
            html_column_name = '<div class="col-12">' + row['client_old__nama'] + '</div>'
            html_column_name +='<div class="col-12">' + row['client_new__nama'] + '</div>'
            data_row.append(html_column_name)

            old_registered_date = '-'
            new_registered_date = '-'
            if row['client_old__magnet_created_at'] != None and row['client_old__magnet_created_at'] != '':
                old_registered_date = row['client_old__magnet_created_at'].strftime('%Y-%m-%d %H:%M')
            if row['client_new__magnet_created_at'] != None and row['client_new__magnet_created_at'] != '':
                new_registered_date = row['client_new__magnet_created_at'].strftime('%Y-%m-%d %H:%M')
            html_column_created_at = '<div class="col-12">' + old_registered_date + '</div>'
            html_column_created_at += '<div class="col-12">' + new_registered_date + '</div>'
            data_row.append(html_column_created_at)

            old_phone_number = '-'
            new_phone_number = '-'
            if row['client_old__phone_no'] != None and row['client_old__phone_no'] != '':
                old_phone_number = row['client_old__phone_no']
            if row['client_new__phone_no'] != None and row['client_new__phone_no'] != '':
                new_phone_number = row['client_new__phone_no']
            html_column_phone_no = '<div class="col-12">' + old_phone_number + '</div>'
            html_column_phone_no += '<div class="col-12">' + new_phone_number + '</div>'
            data_row.append(html_column_phone_no)


            old_email = '-'
            new_email = '-'
            if row['client_old__email'] != None and row['client_old__email']  != '':
                old_email = row['client_old__email'] 
            if row['client_new__email'] != None and row['client_new__email'] != '':
                new_email = row['client_new__email']
            html_column_email = '<div class="col-12">' + old_email + '</div>'
            html_column_email += '<div class="col-12">' + new_email + '</div>'
            data_row.append(html_column_email)


            old_source = '-'
            new_source = '-'

            if row['client_old__source_detail_2'] != None:
                old_source = SOURCE_DETAIL_2_STR[str(row['client_old__source_detail_2'])] 
            new_source = '-'
            if row['client_new__source_detail_2'] != None:
                new_source = SOURCE_DETAIL_2_STR[str(row['client_new__source_detail_2'])]  

            html_column_source = '<div class="col-12">' + old_source + '</div>'
            html_column_source += '<div class="col-12">' + new_source + '</div>'
            data_row.append(html_column_source)

            old_staff_name = '-'
            new_staff_name = '-'
            if row['client_old__id'] in self.client_staff_dict:
                old_staff_name = self.client_staff_dict[row['client_old__id']]

            if row['client_new__id'] in self.client_staff_dict:
                new_staff_name = self.client_staff_dict[row['client_new__id']]
            html_column_staff = '<div class="col-12">' + old_staff_name + '</div>'
            html_column_staff += '<div class="col-12">' + new_staff_name + '</div>'
            data_row.append(html_column_staff)

            action_html = "<div style='padding-right:0.5em'><div class='btn btn-primary suspect-btn-action' data-suscpect_action='accept' data-extra_data='' data-suspect_client_id='" + str(row['id']) + "'> Accept </div> "
            action_html += "<div class='btn btn-danger suspect-btn-action' data-suscpect_action='reject' data-extra_data='' data-suspect_client_id='" + str(row['id']) + "'> Reject </div></div>"
            action_html += "<div style='padding-right:0.5em;width:'100%'><div style='width:'100%' class='btn btn-warning suspect-btn-action' data-suscpect_action='take_right' data-extra_data='' data-suspect_client_id='" + str(row['id']) + "'> Take Right</div></div>"
            # action_html += "<div class='btn btn-info suspect-btn-action' data-suscpect_action='reject' data-extra_data='pribadi' data-suspect_client_id='" + str(row['id']) + "'> Reject, Make Private Data </div></div>"
            data_row.append(action_html)
            # old_client_staff = client_staff_dict[]







            
            
            
                                                            
                                                        
                                                        
                                                            
                                                                

            # data_row.append(client_staff_column)
            print('data_row', len(data_row))                              
                                                
            data_rows.append(data_row)

        output['aaData'] = data_rows
        return output

    def run_queries(self):
        # pages has 'start' and 'length' attributes
        pages = self.paging()
        # the term you entered into the datatable search
        _filter = self.filtering()
        # the document field you chose to sort
        sorting = self.sorting()
        # custom filter
        qs = self.qs
       
        if _filter:
            data = qs.filter(
                reduce(operator.or_, _filter)).order_by('%s' % sorting)
            len_data = data.count()
            data = list(data[pages.start:pages.length].values(
                'id',
                'client_old__id', 
                'client_old__nama', 
                'client_old__magnet_created_at', 
                'client_old__phone_no', 
                'client_old__email', 
                'client_old__source_detail_2',
                'client_new__id', 
                'client_new__nama', 
                'client_new__magnet_created_at', 
                'client_new__phone_no', 
                'client_new__email', 
                'client_new__source_detail_2',
            ))
        else:
            data = qs.prefetch_related('client_old', 'client_new').order_by('-created_at').values(
                'id',
                'client_old__id', 
                'client_old__nama', 
                'client_old__magnet_created_at', 
                'client_old__phone_no', 
                'client_old__email', 
                'client_old__source_detail_2',
                'client_new__id', 
                'client_new__nama', 
                'client_new__magnet_created_at', 
                'client_new__phone_no', 
                'client_new__email', 
                'client_new__source_detail_2',
            )
            len_data = data.count()
            _index = int(pages.start)
            data = data[_index:_index + (pages.length - pages.start)]


        for d in data:
            self.client_ids.append(d['client_old__id'])
            self.client_ids.append(d['client_new__id'])

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
        filter_database = [
            'id',
            'client_old__id', 
            'client_old__nama', 
            'client_old__magnet_created_at', 
            'client_old__phone_no', 
            'client_old__email', 
            'client_old__source_detail_2',
            'client_new__id', 
            'client_new__nama', 
            'client_new__magnet_created_at', 
            'client_new__phone_no', 
            'client_new__email', 
            'client_new__source_detail_2',]
        if (self.request_values.get('sSearch')) and (self.request_values['sSearch'] != ""):
            for i in range(len(filter_database)):
                or_filter.append((filter_database[i]+'__icontains', self.request_values['sSearch']))

        # if (self.request_values.get('sSearch_5')) and (self.request_values['sSearch_5'] != ""):
        #     matching_list = [s for s in SEARCH_SOURCE_LIST if self.request_values.get('sSearch_5').lower() in s]
        #     for matching in matching_list:
        #         print(SOURCE_2_SEARCH_MAPPING_STR[matching], '<-')
            


            
            
            
        #         or_filter.append(('source_detail_2', SOURCE_2_SEARCH_MAPPING_STR[matching]))            

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

                order = ('-created_at')
        else:
            print('masuk else')
            order = '-created_at'
        print('order_by', order)
        return order

    def paging(self):

        pages = namedtuple('pages', ['start', 'length'])

        if (self.request_values['iDisplayStart'] != "") and (self.request_values['iDisplayLength'] != -1):
            pages.start = int(self.request_values['iDisplayStart'])
            pages.length = pages.start + int(self.request_values['iDisplayLength'])

        return pages