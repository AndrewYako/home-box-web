from django.http import HttpResponse
from django.shortcuts import render

def hangling_404(request, exception):
    return render(request, "404.html", {})

def test(request, *args, **kwargs):
    return HttpResponse('OK')

def detail(request, qa_id):
    return HttpResponse(qa_id)

