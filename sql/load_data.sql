-- Загрузка данных в таблицу places
COPY places(name, category, geom)
FROM '/path/to/processed/processed_tourist_places.csv'
DELIMITER ',' CSV HEADER;

-- Загрузка данных в таблицу transport_nodes
COPY transport_nodes(name, type, geom)
FROM '/path/to/processed/processed_transport_nodes.csv'
DELIMITER ',' CSV HEADER;

-- Загрузка данных в таблицу popularity
COPY popularity(place_id, visit_date, visitors)
FROM '/path/to/processed/processed_popularity.csv'
DELIMITER ',' CSV HEADER;
