from django.conf.urls import *
from donation import views

urlpatterns = patterns('',
    url(r'^charge/$', views.charge, name="charge"),
)