import requests
import json
from urllib.parse import urlparse

response = requests.get('https://api.popeyes.vn/api/v1/categories?include_product=100').json()
data = []

for i in response["data"]:
    for z in i["children"]:
        res = requests.get('https://api.popeyes.vn/api/v1/categories/' + z["slug"]).json()
        for x in res["data"]["products"]:
            item = {}
            parsed_url = urlparse(x["images"][0]["desktopUrl"])
            item["type"] = {}
            item["type"][x["slug"]] = {
                "image": "http://" + parsed_url.netloc + parsed_url.path,
                "id": x["id"],
                "name": x["name"],
                "price": x["price"],
            }
            data.append(item)
    
    for j in i["products"]:
        item = {}
        parsed_url = urlparse(j["images"][0]["desktopUrl"])
        item["type"] = {}
        item["type"][j["slug"]] = {
            "image": "http://" + parsed_url.netloc + parsed_url.path,
            "id": j["id"],
            "name": j["name"],
            "price": j["price"],
        }
        data.append(item)

with open("product.json", "w", encoding="utf-8") as f:
    json.dump(data, f, ensure_ascii=False, indent=4)

# with open("product.json", "r", encoding="utf-8") as f:
#     data = json.load(f)
# print(data)
    