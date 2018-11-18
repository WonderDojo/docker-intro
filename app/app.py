import requests
import os
name=os.getenv('NAME', "Ivy")
r = requests.get("https://api.genderize.io/?name="+name)
print(r.text)