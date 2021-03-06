# Vagrant-плагин для автоматического отображения портов

## Аннотация
Данная статья посвящена проблеме автоматизации настройки, работы, мониторинга и решения проблем с виртуальными машинами. В частности рассмотрена задача автоматического выбора свободных портов из заданного диапозона. Приведены аналоги решения задачи. Рассмотрен метод решения проблемы с использованием vagrant-плагина. Исследование свойств решения показывают преимущества данного метода перед аналогами. Плагин и его исходный код доступны в открытом доступе.

## Введение
Технология виртуальных машин позволяет запускать на одном компьютере несколько различных «гостевых» операционных   систем   одновременно [1]. В большинстве случаев требуется запускать несколько одинаковых виртуальных машин. Для автоматизации этого процесса существуют различные инструменты, один из которых – Vagrant [2]. Для того чтобы этот инструмент был легким в использовании и в то же время функциональным, разработчики оставили в нем только основные функции для работы с виртуальными машинами и добавили возможность разрабатывать дополнительные функции в виде подключаемых плагинов. 
На текущий момент существует множество плагинов для различных задач [3]. Но на практике часто встречаются задачи и проблемы, для решения которых еще не создано плагинов. 
В данной работе рассмотрена проблема автоматизации настройки, работы, мониторинга и решения проблем с виртуальными машинами. Актуальность проблемы следует из большой популярности применения виртуальных машин.

## Сравнение аналогов

## Выбор метода решения

## Описание метода решения

## Исследование метода решения

## Заключение
В данной работе был исследован процесс автоматизации работы ВМ с использованием плагинов на конкретной задачи. Исследование показало, что применение плагинов - наиболее естественное и правильное решение задач, возникающих при работе с виртуальными машинами.
Для решения задачи автоматического выбора свободных портов из заданного диапозона был разработан и написан плагин. Плагин доступен для установки стандартным способом vagrant, а его исходный код находится в открытом доступе.
В дальнейшем планируется создание набора плагинов для решения наиболее распространенных задач и проблем с ВМ.

## Список литературы
1. Гультяев, Алексей. "Виртуальные машины. Несколько компьютеров в одном" М (2006).
2. Vagrant by HashiCorp. URL: https://www.vagrantup.com/ (дата обращения: 10.11.2017).
3. Available Vagrant Plugins · hashicorp/vagrant Wiki. URL: https://github.com/hashicorp/vagrant/wiki/Available-Vagrant-Plugins/ (дата обращения: 12.11.2017).
4. Plugins - Vagrant by HashiCorp. URL: https://www.vagrantup.com/docs/plugins/ (дата обращения: 20.11.2017).
5. RubyGems.org | your community gem host. URL: https://rubygems.org/ (дата обращения: 25.11.2017).
