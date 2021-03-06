# Описание метода решения  
Для формирования электронной подписи в ПОЭСО ГАС "Выборы" необходимо внедрить плагин, работа которого будет заключаться в следующем:
+ Получение доступа к работе с сертификатом пользователя
+ Получение документа из специального поля на странице загрузки документа
+ Получение списка отклоненных сертификатов
+ Формирование ЭП с помощью алгоритма из библиотеки криптопровайдера КриптоПро CSP
+ Загрузка документ и ЭП в систему  

Для проверки электронной подписи необходимо при каждом обращении к документу проверять время его последней проверки на сервере, в случае, если оно превышает 24 часа, необходимо запускать повторную проверку, которая позволит убедиться в целостности данных, либо покажет, что подпись невалидна. Также необходимо осуществлять первичную проверку подписи документов при их загрузке в ПОЭСО ГАС "Выборы". 
Работа алгоритма проверки заключается в следующем:  
+ Обращение к Удостоверяющему центру ГАС "Выборы" и получение сертификата ключа проверки электронной подписи пользователя, загрузившего документ
+ Хэширование бинарного представления документа
+ Расшифровка ЭП, прикрепленной к проверяемому документу, с помощью открытого ключа пользователя
+ Сравнение полученных хэшей документа, положительный ответ в случае их идентичности, в ином случае отрицательный.
