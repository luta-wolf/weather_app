import requests
from django.shortcuts import render

# Create your views here.

def index(request):
	appid = '30814faf0bf2eaa9e852c19ea73a6522'
	url = 'https://api.openweathermap.org/data/2.5/weather?q={}&appid=' + appid

	city = 'London'
	res = requests.get(url.format(city))

	print(res.text)

	return render(request, 'weather/index.html')
