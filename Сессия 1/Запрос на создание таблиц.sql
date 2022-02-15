USE DE_Anoshina

CREATE TABLE Поставщики(
Наименование Varchar(50) PRIMARY KEY,
Адрес Varchar(100),
Сроки_доставки DATE
)


CREATE TABLE Спецификация_фурнитура(
Изделие Varchar(50) PRIMARY KEY,
Фурнитура Varchar(50),
Количество int
)

CREATE TABLE Спецификация_материалы(
Изделие Varchar(50) PRIMARY KEY,
Материалы Varchar(50),
Количество int
)

CREATE TABLE Изделие(
Наименование Varchar(50) PRIMARY KEY,
Размеры Varchar(50) 
)

CREATE TABLE Спецификация_сборочная_единица(
Изделие Varchar(50) PRIMARY KEY,
Сборочная_единица_деталь Varchar(50) 
)

CREATE TABLE Заказ(
Номер int PRIMARY KEY,
Дата Date,
Наименование_заказа Varchar(50),
Изделие Varchar(50),
Заказчик Varchar(50),
Ответственный_менеджер Varchar(50),
Стоимость Varchar(50),
Плановая_дата_завершения Date,
Схемы_чертежи_заказа Varchar(50)
)

CREATE TABLE Тип_оборудования(
Наименование Varchar(50),
)

CREATE TABLE Спецификация_оперции(
Изделие Varchar(50),
Операция Varchar(50),
Порядковый_номер int,
Тип_оборудования Varchar(50),
Время_на_операцию DateTime
)

CREATE TABLE Оборудование(
Маркировка Varchar(50),
Тип_оборудования Varchar(50),
Характеристика Varchar(100)
)