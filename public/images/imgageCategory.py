import json
import requests
data = []

url = "https://www.lotteria.vn/rest/default/V1/grs/categories/list?searchCriteria[filterGroups][0][filters][0][field]=parent_id&searchCriteria[filterGroups][0][filters][0][value]=24&searchCriteria[filterGroups][0][filters][0][conditionType]=eq&searchCriteria[sortOrders][0][direction]=DESC&searchCriteria[sortOrders][0][field]=created_at"
response = requests.get(url).json()
for i in response["items"]:
    item = {}
    item["id"] = i["id"]
    item["name"] = i["name"]
    for img in i["custom_attributes"]:
        if img["attribute_code"] == "thumbnail":
            item["image"] = "http://www.lotteria.vn" + img["value"]
            import shutil
            url = item["image"]
            response = requests.get(url, stream=True)
            with open(f'{item["id"]}.png', 'wb') as out_file:
                shutil.copyfileobj(response.raw, out_file)
#     data.append(item)
# with open("category.json", "w", encoding="utf-8") as f:
#     json.dump(data, f, ensure_ascii=False, indent=4)

    
