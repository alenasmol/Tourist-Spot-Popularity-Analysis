# Tourist-Spot-Popularity-Analysis
Анализ данных о туристических местах для выявления закономерностей в популярности в зависимости от времени года, географического расположения и транспортной доступности. Проект демонстрирует использование SQL для работы с геоданными, агрегации и визуализации аналитики.

# Цели проекта
Исследовать, какие туристические места пользуются наибольшей популярностью.
Выявить зависимости популярности от времени года и близости к крупным транспортным узлам.
Продемонстрировать применение SQL для работы с географическими данными.

# Функциональность
Сбор данных:

Получение информации о туристических местах (координаты, категория, отзывы, посещаемость) через открытые API или открытые наборы данных (например, OpenStreetMap, Foursquare, Google Places API).
Очистка и загрузка данных:

Подготовка данных для анализа: очистка, нормализация и импорт в базу данных SQL.

Анализ данных:

Выявление топ-10 популярных мест.
Группировка популярности по сезонам.
Анализ расстояния до транспортных узлов (аэропорты, вокзалы).

Визуализация:

Вывод данных в виде таблиц и графиков с использованием Pandas, Matplotlib, или GeoPandas.

# Технические требования
Инструменты:

SQL (PostgreSQL с расширением PostGIS для работы с геоданными).
Python (Pandas, NumPy, Matplotlib, GeoPandas).

База данных:

places: информация о туристических местах (id, название, координаты, категория).
popularity: данные о посещаемости (id, дата, количество посетителей).
transport_nodes: транспортные узлы (id, название, координаты, тип).

API/источники данных:

OpenStreetMap для геоданных.
Открытые статистические данные о посещаемости.
