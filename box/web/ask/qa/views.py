from django.http import HttpResponse,HttpResponseNotFound

def test(request, *args, **kwargs):
    if test:
        return HttpResponse('OK')
    else:
        return HttpResponseNotFound('404')

def detail(request, qa_id):
    return HttpResponse(qa_id)
