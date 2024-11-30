import pandas as pd

# Чтение сырых данных
raw_data = pd.read_csv('data/raw/raw_tourist_places.csv')

# Очистка данных
cleaned_data = raw_data.drop_duplicates()

# Сохранение обработанных данных
cleaned_data.to_csv('data/processed/processed_tourist_places.csv', index=False)
