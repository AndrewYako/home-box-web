from django.urls import path
from . import views

urlpatterns = [
    path("qa/", views.test, name = "test"),
    path("login/", views.test, name = "test"),
    path("singup/", views.test, name = "test"),
    path("ask/", views.test, name = "test"),
    path("popular/", views.test, name = "test"),
    path("new/", views.test, name = "test"),
    path("", views.test, name = "test"),
    path("", views.test, name = "test"),
    path("question/", views.test, name = "test"),
    path("question/<int:qa_id>/", views.detail, name = "detail"),

]