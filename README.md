## Погодное приложение
Погодное приложение отображает текущую погоду в выбранном городе. Реализовано на языке `Python` с использование фрейворка `Django` и библиотеки `requests`.
- [видеогайд](https://www.youtube.com/watch?v=lsAbq2RcWlQ&ab_channel=%D0%93%D0%BE%D1%88%D0%B0%D0%94%D1%83%D0%B4%D0%B0%D1%80%D1%8C)
- [Openweathermap](https://openweathermap.org/) для `api`
- [Bootstrap](https://getbootstrap.com/docs/5.2/examples/) для оформления

<img width="1201" alt="image" src="https://user-images.githubusercontent.com/58044383/206616194-b2ba0c0d-4af4-426e-8eeb-35543f3dc0df.png">

<details>
<summary>Пошаговое написание проекта</summary>

-  `14:00` подключил админку джанго `http://localhost:8000/admin/`
<img width="819" alt="image" src="https://user-images.githubusercontent.com/58044383/206045534-11e2f8cf-663b-47cf-9e9f-8a37cfcbc6bc.png">

- `14:00` подключил главную страницу `http://localhost:8000/` c шапкой с бутстрапа и добавление конопок
<img width="1219" alt="image" src="https://user-images.githubusercontent.com/58044383/206044984-dfe6be94-c5d8-4cfe-98cb-762810d2824e.png">

- `20:00` подключил api погодного сайта
<img width="823" alt="image" src="https://user-images.githubusercontent.com/58044383/206319764-98a214c1-3e57-4726-9453-7f61a25e8f51.png">

- `30:00` - вывел информацию с api на главную страницу
<img width="1243" alt="image" src="https://user-images.githubusercontent.com/58044383/206596281-ab46fee6-fd10-4ae8-8ee3-f70a1cf01c26.png">

- `34:00` - добавил города в базу данных
<img width="1029" alt="image" src="https://user-images.githubusercontent.com/58044383/206598615-4596912c-8c4f-4514-b863-5f0fe79837bd.png">

- `41:40` - вывел города из базы данных на главную станицу
<img width="1221" alt="image" src="https://user-images.githubusercontent.com/58044383/206600126-878bb0b5-d952-4e49-834a-5fac78be647b.png">

-`48:20` - города вводятся с главной страницы
<img width="1092" alt="image" src="https://user-images.githubusercontent.com/58044383/206605051-31f1f992-200b-4229-98d1-502d73656265.png">

-`51:00` - города вводятся с главной страницы из красивой формы
<img width="1211" alt="image" src="https://user-images.githubusercontent.com/58044383/206609451-f946c331-03e8-4771-9ed0-58798aad9279.png">
</details>

<details>
<summary>Полезные команды</summary>

### Виртульное окружение
- `python3.10 -m venv venv` - устанавливаем venv
- `source venv/bin/activate` - запускаем venv
- `pip install --upgrade pip` - обновляем pip
- `pip freeze` - проверка установеленных бибилиотек в venv
- `deactivate` - выходим из venv
- `pip3 freeze > requirements.txt` - запись усановленных билилотек из venv в txt файл
- `pip install -r requirements.txt`- установить все требуемые библиотеки python в новом
окружении
### Полезных команды git
- `git reset HEAD` - отменить последний `add`
- `git reset --hard` - сбросить все изменеия до последнего комита (может привести к потере результатов работы)
### Установка и запуск Django
- `pip install django` - устанавливаем последнюю версию django (в качестве бибилиотеки)
- `pip install requests` - установка библиотеки requests
- `python manage.py makemigrations` - создаем миргации
- `python manage.py migrate` - запуск миграций
- `django-admin startproject <name_project> .` - установка django (в качестве приложения)
- `python manage.py createsuperuser` - создание суперюзера
- `python manage.py runserver` - запуск проекта в браузере `http://127.0.0.1:8000/`

</details>
<details>
<summary>Как можно улучшить</summary>

- [pythonanywhere](https://www.pythonanywhere.com/) - развернуть здесь сайт
- обернуть в `docker`
- убрать ключи и токены из открытой части кода
</details>

### Запуск
- При первом запуске используем скрипт `bash run.sh`, он настраивает виртуальное окружение
- При повторных запусках: `python src/manage.py runserver`
- Для доступа к базе данных создаем супепользователя `python src/manage.py createsuperuser`
### Результат
- `http://127.0.0.1:8000/` - главная станичка
- `http://localhost:8000/admin` - для админки
