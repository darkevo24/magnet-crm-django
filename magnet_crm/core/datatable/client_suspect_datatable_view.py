from django.views import View
from django.http import JsonResponse
from django.core.exceptions import ImproperlyConfigured
from django.db.models import QuerySet
from core.datatable.client_suspect_datatable import ClientSuspectDataTablesServer


class ClientSuspectServerSideDatatableView(View):
    queryset = None
    columns = None
    model = None
    filter_date = None
    month = None
    year = None
    def get(self, request, *args, **kwargs):
        self.month = kwargs.get('month', "-")
        self.year = kwargs.get('year', "-")

        result = ClientSuspectDataTablesServer(
            request, self.columns, self.get_queryset(), None).output_result()
        return JsonResponse(result, safe=False)

    def get_queryset(self):
        """
        Return the list of items for this view.

        The return value must be an iterable and may be an instance of
        `QuerySet` in which case `QuerySet` specific behavior will be enabled.
        """
        if self.queryset is not None:
            queryset = self.queryset
            if isinstance(queryset, QuerySet):
                if self.month != '-' and self.month != '' and self.month != None:
                    queryset = queryset.filter(created_at__year=self.year,created_at__month=self.month).order_by('-created_at')
                else:
                    queryset = queryset.all().order_by('-created_at')
        elif self.model is not None:
            queryset = self.model._default_manager.all()
        else:
            raise ImproperlyConfigured(
                "%(cls)s is missing a QuerySet. Define "
                "%(cls)s.model, %(cls)s.queryset, or override "
                "%(cls)s.get_queryset()." % {
                    'cls': self.__class__.__name__
                }
            )

        return queryset
