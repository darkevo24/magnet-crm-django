"""magnet_crm URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from magnet_crm.views_ex import (
    main as main_view,
)
from staff import views as staff_views
from client import views as client_views

from django.conf.urls.static import static
from django.conf import settings
urlpatterns = [
    # path('admin/', admin.site.urls),
    path('', main_view.admin_login, name='admin-login'),

    # Core
    path('followup_list', main_view.index, name='list'),
    path('followup_add', main_view.add_tree, name='add'),


    
    path('ajax_form', main_view.ajax_form, name='ajax_form'),

    # Admin Dashboard
    path('dashboard', main_view.dashboard, name='dashboard'),

    # Client
    path('client', client_views.client_list, name='client-list'),
    path('client/add', client_views.client_add, name='client-add'),
    path('client/followup/<str:id_client>', client_views.client_followup_list, name='client-followup-list'),
    path('client/followup/<str:id_client>/add', main_view.add_form, name='followup-form'),

    # Staff
    path('staff', staff_views.staff_list, name='staff-list'),
    path('staff/add', staff_views.staff_add, name='staff-add'),
    path('staff/detail/<uuid:staff_uid>', staff_views.staff_detail, name='staff-detail'),


    path('staff_level', staff_views.staff_level_list, name='staff-level-list'),
    path('staff_level/add', staff_views.staff_level_add, name='staff-level-add'),
    path('staff_level/update/<uuid:staff_level_uid>', staff_views.staff_level_update, name='staff-level-update'),


    path('ajax-magnet/get_subdivison', staff_views.get_subdivison, name='ajax-get-subdivison'),


    

]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)