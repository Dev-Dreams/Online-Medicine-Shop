from django.contrib import admin
from django.utils.html import format_html
from . models import Category, Product, S_Product, Contact, Order

@admin.register(Category)
class AdminCategory(admin.ModelAdmin):
    list_display=('cat_id', 'cat_name')


@admin.register(Product)
class AdminProduct(admin.ModelAdmin):
    def product_img(self, obj):
        return format_html('<img src="{}" width="100" height="100">'.format(obj.p_image.url))
    
    list_display=('p_id','category','p_name', 'p_description', 'p_price','product_img')

@admin.register(S_Product)
class AdminProduct(admin.ModelAdmin):
    def product_img(self, obj):
        return format_html('<img src="{}" width="100" height="100">'.format(obj.s_image.url))
    
    list_display=('s_id','category','s_name', 's_description', 's_price','product_img')

@admin.register(Order)
class AdminOrder(admin.ModelAdmin):
    list_display=('user', 'product', 'quantity', 'date_ordered', 'payment_status', 'address')


admin.site.register(Contact)