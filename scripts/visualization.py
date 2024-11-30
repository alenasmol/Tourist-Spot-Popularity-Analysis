import matplotlib.pyplot as plt
import pandas as pd

# График популярных мест
data = pd.read_csv('data/processed/processed_tourist_places.csv')
data['visitors'].plot(kind='bar')
plt.title('Top Tourist Places')
plt.savefig('visualizations/top_places.png')
