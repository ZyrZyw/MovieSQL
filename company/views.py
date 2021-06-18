from django.shortcuts import render
from .models import Company
# Create your views here.

def company_home(request):
    company = Company.objects.all()
    context = {'company': company}
    return render(request, 'company_home.html')