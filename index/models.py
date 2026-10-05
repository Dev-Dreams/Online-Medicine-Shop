from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

class CustomUser(AbstractUser):
    mobile=models.CharField(max_length=12, verbose_name='Contact Number')


class Category(models.Model):
    cat_id=models.AutoField(primary_key=True)
    cat_name =models.CharField(max_length=150)

    def __str__(self):
        return self.cat_name

# class Sub_Category(models.Model):
#     sub_id=models.AutoField(primary_key=True)
#     sub_name =models.CharField(max_length=150)
#     category = models.ForeignKey(Category,on_delete=models.CASCADE)

#     def __str__(self):
#         return self.sub_name 
    

class Product(models.Model):
    p_id=models.AutoField(primary_key=True)
    category= models.ForeignKey(Category,on_delete=models.CASCADE, verbose_name='Name of category')
    p_name =models.CharField(max_length=150)
    p_description = models.TextField(null=True)
    p_price = models.DecimalField(max_digits=10, decimal_places=2)
    p_image = models.ImageField(upload_to='products/')
    

    def __str__(self):
        return self.p_name
    
class S_Product(models.Model):
    s_id=models.AutoField(primary_key=True)
    category= models.ForeignKey(Category,on_delete=models.CASCADE, verbose_name='Name of category')
    s_name =models.CharField(max_length=150)
    s_description = models.TextField(null=True)
    s_price = models.DecimalField(max_digits=10, decimal_places=2)
    s_image = models.ImageField(upload_to='popular_products/')
    

    def __str__(self):
        return self.s_name
    
class CartItem(models.Model):
      Product = models.ForeignKey(Product, on_delete=models.CASCADE)
      quantity = models.PositiveIntegerField(default=0)
      user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)
      date_added = models.DateTimeField(auto_now_add=True)
      def __str__(self):
          return f'{self.quantity} x {self.Product.p_name}'

class Contact(models.Model):
     first_Name=models.CharField(max_length=250)
     last_Name=models.CharField(max_length=250)
     email=models.EmailField()
     subject=models.CharField(max_length=250)
     message=models.TextField()


class Order(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=0)
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)
    date_ordered = models.DateTimeField(auto_now_add=True)
    payment_status=models.CharField(max_length=255)
    payment_id=models.CharField(max_length=255)
    address=models.TextField()