from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    context={}
    return render(request, 'index/index.html', context)

def login(request):
    context={}
    return render(request, 'index/login.html', context)

def register(request):
    context={}
    return render(request, 'index/registration.html', context)

def shop(request, page=1):
    context={
        "page": page,
    }
    return render(request, 'index/shops/shop.html', context)

def shopItem(request, name=''):
    words = name.split('-')
    productName = ' '.join(word.capitalize() for word in words)

    products = [
        {
            'name': 'Bioderma',
            'price': '$55.00',
            'quantity': '150gm',
            'image': 'images/product_01.png'
        },
        {
            'name': 'Chanca Piedra',
            'price': '$70.00',
            'quantity': '60ml',
            'image': 'images/product_02.png'
        },
        {
            'name': 'Umcka Cold Care',
            'price': '$120.00',
            'quantity': '80ml',
            'image': 'images/product_03.png'
        },
        {
            'name': 'Cetyl Pure',
            'price': '$20.00',
            'quantity': '200ml',
            'image': 'images/product_04.png'
        },
        {
            'name': 'Cla Core',
            'price': '$38.00',
            'quantity': '250mg',
            'image': 'images/product_05.png'
        },
        {
            'name': 'Poo Pourri',
            'price': '$38.00',
            'quantity': '100ml',
            'image': 'images/product_06.png'
        },
    ]

    selectedProduct = [item for item in products if item['name'] == productName]

    context={
        "product": selectedProduct[0],
    }
    return render(request, 'index/shops/shop-items.html', context)

def about(request):
    context={}
    return render(request, 'index/about.html', context)

def contact(request):
    context={}
    return render(request, 'index/contact.html', context)

def cart(request):
    context={}
    return render(request, 'index/cart.html', context)

def checkout(request):
    context={}
    return render(request, 'index/checkout.html', context)

def thankyou(request):
    context={}
    return render(request, 'index/thankyou.html', context)
