import requests
import json
from urllib.parse import urlparse
import random
import mysql.connector
# response = requests.get('https://api.popeyes.vn/api/v1/categories?include_product=100').json()
# data = []

# for i in response["data"]:
#     for z in i["children"]:
#         res = requests.get('https://api.popeyes.vn/api/v1/categories/' + z["slug"]).json()
#         for x in res["data"]["products"]:
#             item = {}
#             parsed_url = urlparse(x["images"][0]["desktopUrl"])
#             item["item"] = {}
#             item["item"]= {
#                 "category": i["slug"] ,
#                 "image": "http://" + parsed_url.netloc + parsed_url.path,
#                 "id": x["id"],
#                 "name": x["name"],
#                 "price": x["price"],
#                 "description": x["description"]
#             }
#             data.append(item)
    
#     for j in i["products"]:
#         item = {}
#         parsed_url = urlparse(j["images"][0]["desktopUrl"])
#         item["item"] = {}
#         item["item"]= {
#             "category": i["slug"] ,
#             "image": "http://" + parsed_url.netloc + parsed_url.path,
#             "id": j["id"],
#             "name": j["name"],
#             "price": j["price"],
#             "description": j["description"]
#         }
#         data.append(item)

# with open("product.json", "w", encoding="utf-8") as f:
#     json.dump(data, f, ensure_ascii=False, indent=4)


# lấy từng sản phẩm trong data
# with open("product.json", "r", encoding="utf-8") as f:    
#     data = json.load(f)
# items = []
# for i in data:
    
#     if (i["item"]["category"] == "combo-khuyen-maii") or (i["item"]["category"] == "thuc--uong") or (i["item"]["category"] == "burger"):
#         item = {}
#         item["item"] = i["item"]
#         items.append(item)

# with open("combo_burger_drink.json", "w", encoding="utf-8") as f:
#     json.dump(items, f, ensure_ascii=False, indent=4)

# random up dữ liệu vào database
with open("combo_burger_drink.json", "r", encoding="utf-8") as f:
    data = json.load(f) 
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="quanlychuoicuahang"
) 
mycursor = mydb.cursor()
random.shuffle(data)
for i in data:
    print(i["item"]["name"])
    if(i["item"]["category"] == "combo-khuyen-maii"):
        category = 8
    elif(i["item"]["category"] == "thuc--uong"):
        category = 5
    else:
        category = 4
    sql = "INSERT INTO product (name, description, price, category_id, branch_id, image, expried) VALUES (%s, %s, %s, %s, %s, %s, %s)"
    val = (i["item"]["name"], i["item"]["description"], i["item"]["price"], category, 6, i["item"]["image"], 2)
    mycursor.execute(sql, val)
    mydb.commit()
    print(mycursor.rowcount, "record inserted.")