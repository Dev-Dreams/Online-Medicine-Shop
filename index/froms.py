from django import forms
from . models import CustomUser
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm



class UserRegFrm(UserCreationForm):
    username=forms.CharField(
        label=("Enter Username"),
        widget=forms.TextInput(attrs={'class':'form-control border-primary'})
    )
    first_name=forms.CharField(
        label=("Enter first name"),
        widget=forms.TextInput(attrs={'class':'form-control border-primary'})
    )
    last_name=forms.CharField(
        label=("Enter last name"),
        widget=forms.TextInput(attrs={'class':'form-control border-primary'})
    )
    email=forms.CharField(
        label=("Enter email"),
        widget=forms.EmailInput(attrs={'class':'form-control border-primary'})
    )
    password1=forms.CharField(
        label=("Enter password"),
        widget=forms.PasswordInput(attrs={'class':'form-control border-primary'})
    )
    password2=forms.CharField(
        label=("Enter confirm password"),
        widget=forms.PasswordInput(attrs={'class':'form-control border-primary'})
    )
    class Meta:
        model=CustomUser
        fields=('username','first_name','last_name','email')


class UserLoginFrm(AuthenticationForm):
    username=forms.CharField(
        label=("Enter Username"),
        widget=forms.TextInput(attrs={'class':'form-control border-primary'})
    )
    password=forms.CharField(
        label=("Enter password"),
        widget=forms.PasswordInput(attrs={'class':'form-control border-primary'})
    )
