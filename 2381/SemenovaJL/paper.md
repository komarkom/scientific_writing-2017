## Исследование и реализация адаптивных моделей обучения тренеров дельфинов
### Аннотация
В настоящее время в обучении всё чаще применяются компьютерные программы. Они помогают автоматизировать обучающий процесс и сократить временные и финансовые затраты на обучение. Использование компьютерной программы также актуально на начальном этапе подготовки тренеров дельфинов. Для повышения эффективности обучения было предложено модифицировать математическую модель, лежащую в основе существующей обучающей программы тренеров дельфинов, применив адаптивный подход к обучению. В работе проведён сравнительный анализ аналогов и обоснованы преимущества предложенного подхода. Дальнейшее развитие темы заключается в реализации программы с применением адаптивной модели обучения, а также расширение области применения программы.
### Введение
Основной проблемой, рассматриваемой в данной статье, является необходимость оптимизации созданной ранее обучающей программы тренеров дельфинов путём изменения математической модели, лежащей в основе алгоритма. Это связано с тем, что традиционная модель обучения имеет общий подход ко всем обучаемым, не учитывая такие важные характеристики, как начальный уровень знаний и индивидуальные особенности обучаемых. В связи с этим возникает проблема излишних временных затрат на обучение одних сотрудников, а также проблема плохого усвоения материала другими. Применение адаптивной модели обучения позволит подобрать оптимальный курс программированного обучения и контроля знаний индивидуально для каждого обучаемого.

Таким образом, целью работы является разработка программы обучения тренеров дельфинов на основе адаптивной модели. Для достижения поставленной цели необходимо выполнить следующие задачи: провести исследование основных принципов построения обучающей системы на основе адаптивной модели обучения; построить адаптивную модель обучения тренеров дельфинов; спроектировать обучающую программу; реализовать основные модули программы; провести тестирование разработанной программы с целью убедиться в правильности реализации описываемого подхода.
### Обзор предметной области
Существует несколько вариантов обучения тренеров дельфинов на начальном этапе подготовки. Необходимо выбрать такой подход, который будет наименее затратным и наиболее эффективным. В связи с этим для рассмотрения выбраны основные существующие подходы к обучению тренеров дельфинов.

Одним из подходов к обучению является использование обучающей программы тренировки дельфинов на основе традиционной модели обучения[4]. Программа отвечает критериям минимизации затрат, но не является эффективной, так как предоставляет материалы обучающего курса независимо от того, какими начальными знаниями обладает пользователь. В связи с этим велика вероятность возникновения ситуации, в которой пользователь будет зря тратить время на работу с материалом, знания по которому у него уже имеются. Также данная программа не учитывает индивидуальные особенности обучаемых, от которых очень сильно зависит эффективность обучения.

Другим подходом к обучению является использование обучающих игр по тренировке дельфинов. Игры дают общее представление о принципах взаимодействия с животными (выполнение команды дельфином за вознаграждение; метод тренировок, основанный на положительном подкреплении и т.д.), но не подходят для профессионального обучения тренеров[5]. 

Кроме того, для обучения можно пройти специальные курсы по тренировке дельфинов. Данный подход эффективен, но предполагает посещение этих курсов, что требует больших временных и финансовых затрат.
### Критерии сравнения аналогов
Наиболее важным критерием в обучении является критерий эффективности обучающего процесса. Данный критерий определяет то, насколько хорошо обучаемый усваивает полученный материал после прохождения обучения. Имеет прямую связь с временным ресурсом и ставит перед собой задачу построения обучающего курса таким образом, чтобы за минимальное время добиться максимальных результатов[2]. 

Вторым рассматриваемым критерием является требуемый временной ресурс. Данный критерий определяет количество времени, которое должен затратить сотрудник для прохождения полного курса обучения на тренера дельфинов.

Для выбора кандидата, наиболее подходящего на должность тренера дельфинов, необходимо провести базовое обучение и тестирование всех кандидатов. Так как бюджет, выделяемый организацией на набор и обучение новых сотрудников, ограниченный, имеет смысл рассматривать финансовый критерий.

### Сравнение аналогов
В таблице 1 приведено сравнение существующих подходов к обучению тренеров дельфинов по выбранным для рассмотрения критериям.

Таблица 1 – Сравнение аналогов

Аналог\Критерий | Время | Финансы | Эффективность 
--------------- | -------------------- | -------- | ---------------
Программа на основе традиционной модели обучения | + | + | +-
Обучающие игры | + | + | -
Обучающие курсы | - | - | +
**Программа на основе адаптивной модели обучения** | + | + | +


В результате сравнения можно прийти к выводу, что программа обучения тренеров дельфинов на основе адаптивной модели имеет преимущества по сравнению с существующими аналогами. Программа на основе традиционной модели обучения проигрывает по критерию эффективности. Обучающие игры также проигрывают по главному критерию сравнения – эффективность подхода к обучению. Обучающие курсы являются эффективными, но проигрывают по критериям времени и финансовых затрат на обучение.  
### Выбор метода решения
В результате анализа существующих подходов к обучению тренеров дельфинов можно прийти к выводу, что для наиболее эффективного обучения с минимальными затратами времени и финансов необходима разработка программы тренеров дельфинов на основе адаптивной модели обучения. При данном подходе сотрудник имеет возможность обучаться дистанционно, что значительно сэкономит время в отличие от случая посещения альтернативных курсов. При этом эффективность обучения будет высокой, так как программа на основании результатов вводного тестирования будет подбирать индивидуальный курс для каждого обучаемого, что позволит также сэкономить время благодаря отсеиванию неактуального для текущего пользователя материала. Таким образом, получили следующие характеристики, которыми должна обладать разрабатываемая обучающая программа:
•	умение определять уровень знаний обучаемых на начальном и на каждом промежуточном этапе обучения;
•	способность анализировать индивидуальные особенности обучаемых (наилучшую форму восприятия для каждой группы индивидов и скорость усвоения материала);
•	высокая эффективность обучения (достигается за счёт использования модифицированной модели адаптивного обучения, предполагающей прохождение обучаемым индивидуального тестирования после каждого блока учебного материала).
### Описание метода решения
В основе технологии адаптивного обучения лежит модель обучаемого, которая учитывает его индивидуальные особенности, такие как характер, уровень знаний, способности к пониманию и усвоению материала[2].

Рассмотрим стандартный механизм построения адаптивной обучающей системы (АОС) на основе стереотипной оверлейной структуры.

Стереотипная модель обучаемого различает несколько типичных, или «стереотипных» обучаемых. Для каждого направления моделирования обучаемого система может иметь набор возможных стереотипов, или шаблонов[1]. В качестве источника адаптации в большинстве систем с применением технологии адаптивного обучения принимается уровень знаний обучаемого, являющийся переменной величиной. Механизм построения моделей обучаемых должен фиксировать изменения уровня их знаний и соответствующим образом модифицировать их модели[3].

Оверлейная модель описывает знания ученика как некоторое подмножество всех знаний используемой модели знаний.

В данной модели используется следующий принцип построения обучающего курса: перед началом обучения пользователь программы получает вводный материал по методике тренировки дельфинов, который включает в себя рекомендации по работе с животными, а также основные правила и принципы проведения тренировок. После этого обучаемый проходит вводное тестирование. Далее вступает в действие блок адаптивного управления (БАУ), который отвечает за анализ результатов тестирования и определение набора заданий, соответствующих уровню знаний обучаемого, который показали результаты вводного теста. Далее проводится индивидуальное тестирование для каждой группы обучаемых. В зависимости от полученного набора заданий и результатов тестирования, обучаемый получает новый набор заданий либо этого же уровня, либо более высокого, либо более низкого. 

Для идентификации пользователя в БД ему необходимо зарегистрироваться, а зарегистрированному пользователю войти в систему под своей учётной записью. За эти функции отвечает блок регистрации/ авторизации пользователей[4]. 
 
Обучение тренера проходит в блоках «Приручение дельфина» и «Обучение дельфина командам»[4]. За промежуточную проверку уровня знаний обучаемого отвечает блок тестирования. Блок адаптивного управления БАУ работает при переходе между блоками, отвечающими за обучения тренера, и блоком тестирования. 

Блок редактирования данных отвечает за изменение входных данных программы: вопросов промежуточных и итогового тестирований, значений вероятностей моделей приручения и обучения дельфина командам, а также значений коэффициентов перехода между группами обучаемых БАУ.

Блок протоколирования отвечает за запись и хранение протоколов обучаемых, которые позволяют отследить прогресс обучения[4].

### Заключение
В данной статье описана возможная модификация обучающей программы тренеров дельфинов, основанная на применении адаптивной модели обучения. Выделены критерии оценки различных подходов к обучению тренеров дельфинов, а также проведено описание и сравнение  существующих аналогов и подходов к решению проблемы обучения тренеров. На основе сравнения рассматриваемых критериев сделаны выводы о преимуществах предложенного способа обучения по сравнению с существующими аналогами, а именно ожидаемая высокая эффективность программы за счёт её способности подстраиваться под индивидуальные особенности обучаемых.

Таким образом, проведённое исследование принципов построения адаптивных обучающих систем позволит достигнуть поставленной цели – реализации программы обучения тренеров дельфинов на основе адаптивной модели. 

Дальнейшие исследования могут быть направлены на расширение области применения программы: планируется добавление обучающего материала и модификация программы для возможности обучать не только тренеров дельфинов, но и тренеров по работе с другими морскими млекопитающими (например, морскими котиками).

### Список литературы
1.	Дулин С.К., Репьев А.В. Программная реализация обучающей системы на основе адаптивной модели обучения //международный журнал ППС. – 2007. – №1. – С. 52–55.
2.	Дидактика. Часть II. Технологии процесса обучения: Учебное пособие/ Автор-составитель В. И. Смирнов. – Нижний Тагил: Нижнетагильская государственная социально-педагогическая академия, 2012. – 544 с.
3.	Романцев В.В. Аналитические модели систем массового обслуживания: учеб. пособие. СПб.: СПбГЭТУ «ЛЭТИ», 1998. 67 с.
4.	Семенова Ю.Л. Разработка обучающей программы тренировки дельфинов / ВКР, СПбГЭТУ «ЛЭТИ», 2016 – 63 с.
5.	Игры про дельфинов. [Электронный ресурс] URL: http://multoigri.ru/igri-pro-delfinov. (Дата обращения: 19.12.2017).
