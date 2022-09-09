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
from notification import views as notification_views
from django.conf.urls.static import static
from django.conf import settings
urlpatterns = [
    # path('admin/', admin.site.urls),
    path('', main_view.admin_login, name='admin-login'),
    path('logout/', main_view.admin_logout, name='admin-logout'),

    # Core
    path('followup_list', main_view.index, name='followup-list'),
    path('followup_add', main_view.add_tree, name='followup-add'),
    path('followup_edit/<str:tree_id>', main_view.edit_tree, name='followup-edit'),
    path('followup_delete/<str:tree_id>', main_view.delete_tree, name='followup-delete'),

    path('client_feedback', client_views.feedback_list, name='client-feedback-list'),

    path('client_import', client_views.client_import, name='client-import'),

    
    

    # Admin Dashboard
    path('dashboard', main_view.dashboard, name='dashboard'),

    path('client_transfer', main_view.client_transfer, name='client_transfer'),
    path('client_transfer_staff_ajax', main_view.client_transfer_staff_ajax, name='client_transfer_staff_ajax'),

    path('client_transfer_new', main_view.client_transfer_new, name='client_transfer_new'),

    # Client
    path('client', client_views.client_list, name='client-list'),
    path('client/add', client_views.client_add, name='client-add'),
    path('client/<str:id_client>/edit', client_views.client_edit, name='client-edit'),
    path('client/<str:id_client>/edit/color/<str:color_str>', client_views.client_edit_color, name='client-edit-color'),
    path('client/<str:id_client>/delete', client_views.client_delete, name='client-delete'),

    path('client/<str:client_id>/client_schedule/add', client_views.client_schedule_add, name='client-schedule-add'),
    path('client/<str:client_id>/client_schedule/list', client_views.client_schedule_list, name='client-schedule-list'),
    path('client/<uuid:client_schedule_uid>/client_schedule/update', client_views.client_schedule_update, name='client-schedule-update'),

    path('client/detail/<str:id_client>', client_views.detail_list, name='client-detail-list'),
    path('client/followup/<str:id_client>', client_views.client_followup_list, name='client-followup-list'),
    path('client/followup/<str:id_client>/add', main_view.add_form, name='followup-form'),

    path('client/client_journey/add/<str:client_id>/<str:journey_type>', client_views.client_journey_add, name='client-journey-add'),

    path('ajax_form', main_view.ajax_form, name='ajax_form'),
    path('client/followup/<str:id_client>/<str:id_followup>/delete', main_view.delete_form, name='followup-form-delete'),

    # Staff
    path('staff', staff_views.staff_list, name='staff-list'),
    path('staff/add', staff_views.staff_add, name='staff-add'),
    path('staff/<str:uid_staff>/edit', staff_views.staff_edit, name='staff-edit'),
    path('staff/detail/<uuid:staff_uid>', staff_views.staff_detail, name='staff-detail'),
    path('staff/delete/<uuid:staff_uid>', staff_views.staff_delete, name='staff-delete'),
        
    path('staff/<str:staff_uid>/salary', staff_views.staff_salary_list, name='staff-salary-list'),
    path('staff/<str:staff_uid>/salary_add', staff_views.staff_salary_add, name='staff-salary-add'),
    path('staff/<str:staff_uid>/salary_edit/<str:salary_id>', staff_views.staff_salary_edit, name='staff-salary-edit'),




    path('staff/lock/<uuid:staff_uid>', staff_views.staff_lock, name='staff-lock'),
    path('staff/unlock/<uuid:staff_uid>', staff_views.staff_unlock, name='staff-unlock'),


    path('staff_level', staff_views.staff_level_list, name='staff-level-list'),
    path('staff_level/add', staff_views.staff_level_add, name='staff-level-add'),
    path('staff_level/update/<uuid:staff_level_uid>', staff_views.staff_level_update, name='staff-level-update'),
    path('staff_level/delete/<uuid:staff_level_uid>', staff_views.staff_level_delete, name='staff-level-delete'),



    path('ajax-magnet/get_subdivison', staff_views.get_subdivison, name='ajax-get-subdivison'),
    path('ajax-notification/get_notification', notification_views.get_notifications, name='ajax-get-notification'),
    path('notification/<str:notification_id>', notification_views.open_notification, name='open_notif'),


    

]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)