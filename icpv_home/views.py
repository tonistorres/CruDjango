from django.shortcuts import render
from django.http import HttpResponse


def homeTemplate(request):
    return render(request, "icpv_home/index.html")
