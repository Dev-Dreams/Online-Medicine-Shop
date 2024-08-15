from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('shop/<int:page>/', views.shop, name='shop'),
    path('shop-items/<slug:name>/', views.shopItem, name='shop_item'),
]