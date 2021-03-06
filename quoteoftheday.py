import requests
import json

url = "http://quotes.rest/qod.json?category=inspire"

response = requests.request("GET", url)

parser = response.json()
if response.status_code == 200:
    parser = response.json()
    quote = parser["contents"]["quotes"][0]["quote"]
    author = parser["contents"]["quotes"][0]["author"]
    print(quote, '-', author)
else:
    print('If you love life, do not waste time, because time if what life is made of. - Bruce Lee')
    print("Absorb what is useful, discard what is useless, and add what is specifically your own. - Bruce Lee")
