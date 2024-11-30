-----Топ-5 популярных мест по количеству посетителей
SELECT 
    p.name AS place_name, 
    SUM(pop.visitors) AS total_visitors
FROM 
    popularity pop
JOIN 
    places p ON pop.place_id = p.id
GROUP BY 
    p.name
ORDER BY 
    total_visitors DESC
LIMIT 5;

-----Ежемесячный тренд посещаемости
SELECT 
    DATE_TRUNC('month', pop.visit_date) AS month,
    SUM(pop.visitors) AS total_visitors
FROM 
    popularity pop
GROUP BY 
    month
ORDER BY 
    month;

-----Поиск ближайших транспортных узлов для туристических мест
SELECT 
    p.name AS place_name, 
    t.name AS transport_node, 
    ST_Distance(p.geom::geography, t.geom::geography) AS distance_meters
FROM 
    places p
CROSS JOIN 
    transport_nodes t
ORDER BY 
    place_name, distance_meters
LIMIT 10;

-----Сезонный анализ популярности
SELECT 
    EXTRACT(MONTH FROM pop.visit_date) AS month, 
    p.category, 
    SUM(pop.visitors) AS total_visitors
FROM 
    popularity pop
JOIN 
    places p ON pop.place_id = p.id
GROUP BY 
    month, p.category
ORDER BY 
    month, total_visitors DESC;

