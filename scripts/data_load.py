import psycopg2

# Подключение к базе данных
conn = psycopg2.connect("dbname=mydb user=myuser password=mypassword")
cursor = conn.cursor()

# Загрузка данных
with open('data/processed/processed_tourist_places.csv', 'r') as f:
    cursor.copy_expert("COPY places(name, category, geom) FROM STDIN WITH CSV HEADER", f)

conn.commit()
conn.close()
