from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('user-log/', views.userLogin, name='user-log'),
    path('user-logout/', views.userLogout, name='user-logout'),
    path('user-reg/', views.userReg, name='user-reg'),
    path('shop/<int:page>/', views.shop, name='shop'),
    path('prddetails/<int:p_id>', views.PrdDetails, name='pdetails-page'),
    path('cateDetails/<int:cat_id>', views.cateDetails,name='cat-details-page'),
    path('about/', views.about, name='about'),
    path('contact/', views.contact, name='contact'),
    path('cart/', views.cart, name='cart'),
    path('checkout/', views.checkout, name='checkout'),
    path('thankyou/', views.thankyou, name='thankyou'),
    path('add/<int:p_id>/', views.add_to_cart, name='add_to_cart'),
    path('remove/<int:p_id>', views.remove_cart, name='remove_cart'),
    path("initiate-payment/", views.initiate_payment, name="initiate_payment"),
    path("payment-success/", views.payment_success, name="payment_success"),
    path("payment-failed/", views.payment_failed, name="payment_failed"),

]