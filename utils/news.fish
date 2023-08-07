#!/usr/bin/env fish
mkdir -p ./assets/data/news
cd ./assets/data/news
# Download JSON File from NEWT CMS
curl "https://flutterkaigi.cdn.newt.so/v1/flutterkaigi-2023/news" -H "Authorization: Bearer $NEWT_CDN_API_TOKEN" | jq > ./news.json
# Remove unused KV
cat news.json | jq -c '{"items": [.items[] | del(._id, ._sys)]}' > tmp
mv tmp news.json