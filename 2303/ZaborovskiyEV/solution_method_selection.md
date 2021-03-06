## Выбор метода решения
В результате обзора существующих архитектур с точки зрения многопоточного программирования были рассамотрены их характеристики из которых становилось ясна их низкая эффективность с точки зрения соотношения скорости разработки и производительности результата.

Поэтому, цель работы — разработка системы на основе архитектуры, которая сможет предоставить легко расширяемую и масштабируемую многопоточную среду при минимальных затратах времени разработчика.

При этом решение должно обладать следующими свойствами:
* Система должна быть доступной и продолжать функционировать даже при отказе одной из её частей.
* Должна сохранятся прозрачность и возможность отследить коммуникации между различными потоками.
* Необходим широкий набор базовых компонентов для построения универсального фреймворка без привязки к бизнес процессам.
* Поддержка unit тестов.
* Система должна иметь возможность добавления масштабируемости по разным машинам.
* Код должен быть согласован и в едином стиле.
