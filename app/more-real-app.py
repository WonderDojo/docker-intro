import requests
r = requests.get("https://api.genderize.io/?name=peter")
print(r.text)
