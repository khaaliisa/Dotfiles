import requests
import json

url = "http://quotes.rest/qod.json?category=inspire"

response = requests.request("GET", url)

parser = response.json()
try:
    quote = parser["contents"]["quotes"][0]["quote"]
    author = parser["contents"]["quotes"][0]["author"]
    print(quote, '-', author)
except:
    print("Absorb what is useful, discard what is useless, and add what is specifically your own. - Bruce Lee")
