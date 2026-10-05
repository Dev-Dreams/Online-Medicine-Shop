import razorpay
from django.conf import settings
from django.http import JsonResponse
from django.shortcuts import redirect, render
from django.http import HttpResponse 
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from . froms import UserRegFrm, UserLoginFrm
from . models import Category, Product, S_Product, Contact, CartItem, Order
def index(request):
        allSProd=S_Product.objects.all()
        return render(request, 'index/index.html',{'allSProd' :allSProd})
    # return render(request, 'index/index.html', context)

def userLogin(request):
    if request.POST:
        frm=UserLoginFrm(request=request, data=request.POST)
        if frm.is_valid():
            uname=frm.cleaned_data['username']
            upass=frm.cleaned_data['password']
            user=authenticate(username=uname, password=upass)
            if user is not None:
                login(request, user)
                return redirect('/')
    frm=UserLoginFrm()
    context={'frm':frm}
    return render(request, 'index/login.html', context)

def userLogout(request):
    logout(request)
    return redirect('/user-log')
    

def userReg(request):
    if request.POST:
        frm=UserRegFrm(data=request.POST)
        if frm.is_valid():
            try:
                frm.save()
                messages.success(request, 'Registration is successfully done')
            except Exception as e:
                messages.error(request,'Your Registration is not successfull')
    else:
        frm=UserRegFrm()
    context={'frm':frm}
    return render(request, 'index/registration.html', context)

def shop(request, page=1):
    allCat=Category.objects.all()
    allProd=Product.objects.all()
    return render(request, 'index/shops/shop.html', {'allProd':allProd, 'allCat':allCat})

def PrdDetails(request, p_id):
    allProd=Product.objects.filter(p_id=p_id)
    return render(request, 'index/shops/product.html', {'allProd':allProd})

def about(request):
    context={}
    return render(request, 'index/about.html', context)

def contact(request):
    context={}
    if request.method=="POST":
        first_Name=request.POST.get("first_Name")
        last_Name=request.POST.get("last_Name")
        email=request.POST.get("email")
        subject=request.POST.get("subject")
        message=request.POST.get("message")

        obj=Contact(first_Name=first_Name,last_Name=last_Name,email=email,subject=subject,message=message)
        obj.save()
        context['message']=f"Dear {first_Name}, Thanks for your time!"

    return render(request, 'index/contact.html', context)

def cart(request):
     if request.user.is_authenticated:
        cart_items = CartItem.objects.filter(user=request.user)
        total_price = sum(item.Product.p_price * item.quantity for item in cart_items)
        total_price=int(total_price)
        return render(request, 'index/cart.html', {'cart_items': cart_items, 'total_price': total_price})
     else:
          return redirect('/user-log')

def checkout(request):
    context={}
    return render(request, 'index/checkout.html', context)

def thankyou(request):
    context={}
    return render(request, 'index/thankyou.html', context)

def cateDetails(request,cat_id):
    allCate=Category.objects.all()
    allProd=Product.objects.filter(category=cat_id)
    return render(request, 'index/shops/shop.html', {'allProd':allProd, 'allCat':allCate})


def add_to_cart(request, p_id):
	if request.user.is_authenticated:
		product = Product.objects.get(p_id=p_id)
		cart_item, created = CartItem.objects.get_or_create(Product=product, user=request.user)
		cart_item.quantity += 1
		cart_item.save()
		return redirect('/cart')
	else:
		return redirect('/user-log')

def view_cart(request):
	if request.user.is_authenticated:
		cart_items = CartItem.objects.filter(user=request.user)
		total_price = sum(item.Product.p_price * item.quantity for item in cart_items)
		total_price=int(total_price)
		return render(request, 'index/cart.html', {'cart_items': cart_items, 'total_price': total_price})
	else:
		return redirect('/user-log')
     
def remove_cart(request,p_id):
    if request.user.is_authenticated:
        cart_item = CartItem.objects.get(id=p_id, user=request.user)
        cart_item.delete()
        return redirect('/cart')
    else:
        return redirect('/user-log')
    
def initiate_payment(request):
    if request.method == "POST":
        amount = int(request.POST["amount"]) * 100  # Amount in paise
        address=request.POST['address']
        client = razorpay.Client(auth=(settings.RAZORPAY_API_KEY, settings.RAZORPAY_API_SECRET))

        payment_data = {
            "amount": amount,
            "currency": "INR",
            "receipt": "order_receipt",
            "notes": {
                "email": "user_email@example.com",
            },
        }

        order = client.order.create(data=payment_data)
        
        # Include key, name, description, and image in the JSON response
        response_data = {
            "id": order["id"],
            "amount": order["amount"],
            "currency": order["currency"],
            "key": settings.RAZORPAY_API_KEY,
            "name": "My Project",
            "description": "Payment for Your Product",
            "image": "https://yourwebsite.com/logo.png",  # Replace with your logo URL
        }
        cart_items=CartItem.objects.filter(user=request.user)
        # payment_id=response_data.id
        for cart in cart_items:
            Order.objects.get_or_create(user=request.user, product= cart.Product, quantity=cart.quantity, payment_status='success', address=address)
        
        CartItem.objects.filter(user=request.user).delete()

        return JsonResponse(response_data)
    return redirect('index:cart.html')

def payment_success(request):
    return render(request, "index/payment_success.html")

def payment_failed(request):
    return render(request, "index/payment_failed.html")
