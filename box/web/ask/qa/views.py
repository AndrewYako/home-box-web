from django.http import HttpResponse

def test(request, *args, **kwargs):
    return HttpResponse('OK')

def detail(request, qa_id):
    return HttpResponse(qa_id)
