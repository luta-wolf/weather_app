import requests
from django.shortcuts import render
from . models import City

# Create your views here.

def index(request):
	appid = '30814faf0bf2eaa9e852c19ea73a6522'
	url = 'https://api.openweathermap.org/data/2.5/weather?q={}&units=metric&appid=' + appid

	cities = City.objects.all()
	all_cities = []

	for city in cities:
		res = requests.get(url.format(city.name)).json()
		city_info = {
			'city': city.name,
			'temp': res["main"]["temp"],
			'icon': res["weather"][0]["icon"]
		}
		all_cities.append(city_info)


	context = {'all_info': all_cities} 	 # Передача данных в html шаблон

	return render(request, 'weather/index.html', context)
