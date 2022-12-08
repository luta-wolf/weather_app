import requests
from django.shortcuts import render

# Create your views here.

def index(request):
	appid = '30814faf0bf2eaa9e852c19ea73a6522'
	url = 'https://api.openweathermap.org/data/2.5/weather?q={}&units=metric&appid=' + appid

	city = 'London'
	res = requests.get(url.format(city)).json()

	city_info = {
		'city': city,
		'temp': res["main"]["temp"],
		'icon': res["weather"][0]["icon"]
	}

	context = {'info': city_info} 	 # Передача данных в html шаблон

	return render(request, 'weather/index.html', context)
