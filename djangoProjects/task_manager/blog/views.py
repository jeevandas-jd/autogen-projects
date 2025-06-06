from django.shortcuts import render
from rest_framework import permissions,viewsets
from .models import BlogPost
from .serializers import BlogPostSerializer


class IsOwner(permissions.BasePermission):

    def has_object_permission(self, request, view, obj):
        return obj.author == request.user
class BlogPostViewSet(viewsets.ModelViewSet):
    queryset=BlogPost.objects.all()
    serializer_class=BlogPostSerializer
    permission_classes=[permissions.IsAuthenticated,IsOwner]

    def perform_create(self, serializer):
        serializer.save(author=self.request.user)
    def get_queryset(self):
        return self.queryset.filter(author=self.request.user)
    

# Create your views here.
