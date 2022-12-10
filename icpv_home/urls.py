from django.urls import path
from .views import homeTemplate

urlpatterns = [
    path("", homeTemplate, name="homeTemplate"),
]
