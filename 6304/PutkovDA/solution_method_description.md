## solution_method_description

Архитектуру программной реализации в общем виде можно представить следующим образом:

1. Подключение к гугл-таблице (функция authorize_to_spreadsheets)

	Для доступа к гугл-таблице требуется документ в формате джейсон,
	генерируемый прямо при создании `проекта Google`.

	Затем, происходит подключение к таблице, передавая путь к этому файлу
	и ссылку `https://spreadsheets.google.com/feeds`

2. Генерация страниц и запись текущей даты (функция get_date)

	Теперь, имея доступ к таблице, следует создать список листов, чтобы
	в дальнейшем записывать добавлять туда информацию.
	В переменную записывается текущая дата в формате `дд-мм-гг`

3. Получение и парсер аргументов (функция get_credentials)

	Используя библиотеку `argparse`, функция считывает следующие аргументы:
	* CREDENTIALS название файла, хранящие client_id client_secret для Github

	* REPO список репозиториев, информацию о которых требуется получить.

	* IVISIBILITY_ACCESS файл, содержащий список участников, информацию о которых не требуется учитывать.
	* LINK  Ссылка на гугл-таблицу, в которую будет записываться информация

3.  Учёт исключений, переданных как аргументы (функция  check_invisibility)

	создание списка участников, полученный через INVISIBILITY.

4. Запись данных в таблицу ( функция creating_worksheet)

	1. Авторизация на гитхабе (функция authed_login)
	2. Проверка, создаем ли мы новую таблицу или обновляем уже существующую(функция  whether_sheet_is_new)

	3. Создаем оформление : на одном листе будет 4 таблицы, каждый содержит название, столбцы(дату обновления), строки(репозитории или учатники).(функция  create_head_for_general или create_head_for_users)
	4. Для каждого репозитория из списка вызывается функция, общая сложность которой O(countOfAssignees)+O(countOfIssues)+O(countOfCommits)+O(countOfPull() (функция Get_info)
	5. Запись полученных данных в таблицы. ( push_spread_for_generals или push_spread_for_users)

	Данный пункт является самым долгим по времени выполнения. Это связано, прежде всего, с подключением к Github data и записи их в Google spreadsheet)

5. Скрипт, написанный на GoogleAPPScript, создающий графики


	
	* При первой записи данных в новую таблицу следует запустить скрипт, передав в него ссылку на таблицу. В дальнейшем это не требуется, т.к. скрипт создает графики по изначально очень большому рэнджу из клеток, поэтому графики будут изменяться самостоятельно. 

Входные данные:

* Ссылка на таблицу
* файл с client_id, client_secret github
* файл со списком репозиториев
* файл со списком людей-исключений(необязательный параметр)

Выходные данные:

* Ссылка на созданную таблицу 
* Ссылка на гугл-скрипт

Сценарий использования:

./get_info.py --credentials credFile --repos reposFile --invisibility peopleFile --link link

Используемые технологии:

* github
PyGitHub is a Python (2 and 3) library to access the GitHub API v3. This library enables you to manage GitHub resources such as repositories, user profiles, and organizations in your Python applications.

* argparse
The argparse module makes it easy to write user friendly command line interfaces. The program defines what arguments it requires, and argparse will figure out how to parse those out of sys.argv. The argparse module also automatically generates help and usage messages and issues errors when users give the program invalid arguments.

* gspread
Manage spreadsheets with gspread in Python.

Features:

    Open a spreadsheet by its title or url.
    Extract range, entire row or column values.
    Independent of Google Data Python client library.
    Python 3 support.

* oauth2client.service_account
This is a client library for accessing resources protected by OAuth 2.0.
* datetime
The datetime module supplies classes for manipulating dates and times in both simple and complex ways. While date and time arithmetic is supported, the focus of the implementation is on efficient attribute extraction for output formatting and manipulation. For related functionality, see also the time and calendar modules.

Интерфейсом пользователя является командная строка.

Данные для участников хранятся в словаре, которая создается при итерации по списку репозиториев. Она обнуляется каждый раз при записи данных нового репозитория. Также существует общий список данных, в который заносится имя репозитория и информация по нему. Такой словарь имеет жизненный цикл, равный жизненному циклу работы программы.


Тесты, используемые при проверки работы :
* Интеграционный тест
