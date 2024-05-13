import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("titanic.csv") # df - DataFrame

# 1. Count the number of survived people
survived = df.query('Survived == 1').shape[0]
print(f"Number of survived people: {survived}")

# 2. Count the number of people in each class
class_counts = df['Pclass'].value_counts()
print(f"Number of people in each class:\n{class_counts}")
# sort by index
class_counts = class_counts.sort_index()
print(f"Number of people in each class (sorted):\n{class_counts}")

# 3. Replace class numbers with class names
class_names = {1: 'First', 2: 'Second', 3: 'Third'}
df['Pclass'] = df['Pclass'].replace(class_names)

# 4. Plot the number of people in each class using a pie chart
plt.figure()
class_counts.plot.pie(autopct='%1.1f%%') # au
plt.title("Number of people in each class")
plt.show()

# 5. Get price of the most expensive ticket. <25% of its price is 'cheap', >=75% is 'expensive', the rest is 'normal'
ticket_price = df['Fare'].max()
cheap = ticket_price / 4
expensive = ticket_price * 0.75
print(f"Price of the most expensive ticket: {ticket_price}")

# 6. Replace ticket prices with 'cheap' and 'expensive'
df['Fare'] = df['Fare'].apply(lambda x: 'cheap' if x < cheap else 'expensive')

# 7. Plot the number of people in each price category using a pie chart
plt.figure()
fare_counts = df['Fare'].value_counts()
fare_counts.plot.pie(autopct='%1.1f%%')
plt.title("Number of people in each price category")
plt.show()

# 8. Save the modified DataFrame to a new CSV file
df.to_csv("titanic_modified.csv", index=False)