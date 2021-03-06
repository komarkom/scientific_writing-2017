## Описание метода решения

Исполняемый сценарий разработан на языке Python. Python выбран в связи с легкостью написания исполняемых сценариев на языке, а также наличием большого количества модулей для языка для разнообразных задач.

### Входные данные

Аргументом командной строки при запуске исполняемого сценария указывается путь к директории, в которой находятся файлы, содержащие текст для проверки. Сценарий будет учитывать все файлы с расширением .md находящиеся в папке.

### Сценарий использования

Предполагается единственный сценарий использования разработанного решения, состоящий из следующих этапов:

1. Запуск исполняемого сценария с указанием пути к директории с файлами, содержащими текст для проверки

2. Получение результата проверки.

В качестве выходных данных пользователь получает числовой показатель водности текста а также график соответствия текста закону Ципфа и числовое значение отклонения от него графика частоты встречаемости слов в тексте. В дополнение к этому пользователю предоставляются рекомендации по интерпретации полученных результатов проверки. Пример графика представлен на рис. 1.
![equation](https://pp.userapi.com/c840629/v840629322/357be/2hv7EDlP9GQ.jpg)
Рисунок 1 - Пример графика

### Алгоритм работы и используемые технологии

Поставленная задача требовала решения следующих подзадач:

1. Парсинг .md файлов;

2. Парсинг текста;

3. Анализ текста как набора слов;

4. Математические рассчеты и построение графиков.

При запуске исполняемого сценария находится файл paper.md содержащий всю статью или все .md файлы в директории, которые поступают на обработку, осуществляемую с помощью модуля mistune, переводящего .md файл в html документ. Это удобно, в связи с развитостью html-парсеров по причине огромной популярности и распространенности формата. Так же идея перевода файла в промежуточный формат html позволит в дальнейшем добавить поддержку анализа текстов в другом формате. Парсинг html документа осуществляется с помощью модуля bs4.
                                                                                                   
Из html документа выделяется весь текст, который затем с помощью регулярного выражения разбивается на слова, получая список слов текста. Работа с регулярными выражениями осуществляется с помощью модуля re. Полученный список слов текста необходимо привести в нормальную языковую форму для дальнешей обработки, что возможно благодаря модулю pymorphy2 - морфологического анализатора для русского языка.
                                                                                                 
На данном этапе для определения "водности" текста неободимо подсчитать количество стоп-слов в нем, и исключить их для дальнейшей обработки. Список стоп-слов русского языка содержится в модуле nltk.
                                                                                                      
Вычислительная работа с данными для их отображения осуществляется с помощью модуля scipy. Графики строятся средствами модуля matplotlib.
 

## Источники
                                                                                                   м
1. seopult.ru/library
2. Демидова А. К. Пособие по русскому языку: научный стиль, оформление научной работы. – Рус. яз., 1991.
1. Демидова А. К. Пособие по русскому языку: научный стиль, оформление научной работы. – Рус. яз., 1991.
2. Davis H. Search engine optimization. – " O'Reilly Media, Inc.", 2006.
3. Словарь терминов семантического анализа. // URL: seopult.ru/library
4. Dong X. L. et al. Knowledge-based trust: Estimating the trustworthiness of web sources //Proceedings of the VLDB Endowment. – 2015. – Т. 8. – №. 9. – С. 938-949.
5. Сервис оценки качества текста. // URL: 1y.ru
6. Сервис оценки качества текста. // URL: text.ru
7. Сервис оценки качества текста. // URL: contentmonster.ru
8. Newman M. E. J. Power laws, Pareto distributions and Zipf's law //Contemporary physics. – 2005. – Т. 46. – №. 5. – С. 323-351.
9. Lelu A. Jean-Baptiste Estoup and the origins of Zipf's law: a stenographer with a scientific mind (1868-1950) //Boletín de Estadística e Investigación Operativa. – 2014. – Т. 30. – №. 1. – С. 66-77.
10. Репозиторий факультатива по подготовке научных статей. // URL: github.com/moevm/scientific_writing-2017
N. Заславский М.М., Блеес Э.И., Баландин С.И. Метод обработки в реальном времени открытых данных, содержащих геоконтекстную разметку // Научно-технический вестник информационных технологий, механики и оптики. 2017. Т. 17. № 5. С. 850–858. doi: 10.17586/2226-1494-2017-17-5-850-858
11. Mistune module for Python // URL: github.com/lepture/mistune
12. Bs4 module for Python // URL: crummy.com/software/BeautifulSoup/bs4/doc/
13. PyMorphy2 module for Python // URL: github.com/kmike/pymorphy2
14. Nltk module for Python // URL: nltk.org
15. SciPy mudle for Python // URL: scipy.org
16. MatPlotLib module for Python // URL: matplotlib.org