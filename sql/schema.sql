-- Создание таблицы туристических мест
CREATE TABLE places (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    geom GEOMETRY(Point, 4326)
);

-- Создание таблицы транспортных узлов
CREATE TABLE transport_nodes (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    geom GEOMETRY(Point, 4326)
);

-- Создание таблицы популярности
CREATE TABLE popularity (
    id SERIAL PRIMARY KEY,
    place_id INT REFERENCES places(id) ON DELETE CASCADE,
    visit_date DATE NOT NULL,
    visitors INT NOT NULL
);
