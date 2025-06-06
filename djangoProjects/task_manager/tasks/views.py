from django.shortcuts import render
from tasks.models import Task
from rest_framework.parsers import JSONParser
from tasks.serializers import TaskSerializer
from rest_framework.response import Response

from rest_framework.permissions import IsAuthenticated
from rest_framework import viewsets
from .models import Task
from .serializers import TaskSerializer

class TaskViewSet(viewsets.ModelViewSet):
    queryset = Task.objects.all()
    serializer_class = TaskSerializer
    permission_classes = [IsAuthenticated]
