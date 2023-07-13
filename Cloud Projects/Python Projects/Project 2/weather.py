import requests

API_KEY = "748897aa97278897c911a4ba1dfc0ba7"
BASE_URL = "http://api.openweathermap.org/data/2.5/weather"

city = input("Enter a city name: ")
request_url = f"{BASE_URL}?appid={API_KEY}&q={city}&units=metric"

response = requests.get(request_url)

if response.status_code == 200:
    data = response.json()
    weather = data['weather'][0]['description']
    temperature = data["main"]["temp"]
    print("Weather is:", weather)
    print("Temperature is:", temperature, "celsius")
else:
    print("An error occurred")
