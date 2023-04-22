from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
import datetime

# Create your models here.
class QuestionManager(models.Manager):
    def new(self):
        return self.ordered_by('-added_at')
    def popular(self):
        return self.order_by("-rating")

class Question(models.Model):
    title = models.CharField("заголовок вопроса", max_length=200)
    text = models.TextField("полный текст вопроса")
    added_at = models.DateTimeField(auto_now_add=True)
    rating = models.IntegerField(default=0)
    author = models.CharField("автор вопроса", max_length=200)
    likes = models.ManyToManyField(User)

    def __str__(self) -> str:
        return self.title

class Answer(models.Model):
    text = models.TextField("текст ответа")
    added_at = models.DateTimeField(auto_now_add=True)
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    author = models.CharField("автор ответа", max_length=200)

    def __str__(self) -> str:
        return self.author