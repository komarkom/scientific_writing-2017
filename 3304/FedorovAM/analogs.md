## Сравнение аналогов

Для объеденения карт препятсвий, построенных группой мобильных роботов, существуют следующие алгоритмы:

### Метод максимизации ожидания с учётом неопределённости (Uncertainty-Aware Expectation Maximization Approach)[1]

Данный метод использует максимизацию ожидания для построение общей карты группой мобильных роботов. При этом расположение роботов полагается неопределённым, что позволяет повысить точность при долгосрочной навигации. 

### Распределённая согласованность в сетях роботов (Distributed Consensus on Robot Networks)[2]

В данном методе каждый робот строит свою локальную карту, по которой расчитывает информационные матрицы и вектора, которые передаются другим роботам для построения глобальной карты.

### SLAM на основе фильтров частиц (Simultaneous Localization and Mapping using Particle Filters)[3]

Данный метод предполагет, что начальное положение роботов неизвестно, и относительное расположение роботов определяется при их встрече. Относительное расположение используется для инициализации фильтра частиц, на основе которого решается задача совместного построения карты препятсвий.

## Критерии сравнения аналогов

### Универсальность

В каких условиях метод неприменим

### Масштабируемость

При каком количестве роботов метод будет эффективно работать

## Таблица сравнения по критериям

Аналог\Критерий|Многокритериальная проверка|Ограничение длины текста
-|-|-
1y.ru|-|-
text.ru|+|+
contentmonster.ru|+|-

## Выводы по итогам сравнения

Результаты сравнения показывают, что метод распределённой согласованности в сетях роботов обладает лучшими среди рассмотренных методов значениями критериев.

## Источники

1. Jing Dong, Erik Nelson, Vadim Indelman, Nathan Michael, Frank Dellaert. Distributed real-time cooperative localization and mapping using an uncertainty-aware expectation maximization approach – Robotics and Automation (ICRA), 2015 IEEE International Conference on
2. Rosario Aragues, Jorge Cortes, Carlos Sagues. Distributed Consensus on Robot Networks for Dynamically Merging Feature-Based Maps -  IEEE Transactions on Robotics
3. Andrew Howard. Multi-robot Simultaneous Localization and Mapping using Particle Filters -  NASA Jet Propulsion Laboratory, Pasadena, California 91109, U.S.A.
