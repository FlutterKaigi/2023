#!/usr/bin/env fish
mkdir -p ./assets/data/staffv2/images
cd ./assets/data/staffv2
# Download JSON File from NEWT CMS
curl "https://flutterkaigi.cdn.newt.so/v1/flutterkaigi-2023/staffv2" -H "Authorization: Bearer $NEWT_CDN_API_TOKEN" | jq > ./tmp
# Remove unused KV
cat ./tmp  | jq -c '{"items" : [ .items[] | . + {"imageName": .image.fileName} | del(._sys, ._id, .image, .sns
[]._id) ]}' > staffv2.json
# Download profile images
cd images
for line in (cat ../tmp | jq ".items[].image.src" | string replace -a '"' '')
    wget $line
end;
cd ..
rm tmp
# Rename image files
for line in $(cat staffv2.json | jq '.items[]' -c)
    set filename (echo $line | jq ".imageName" | string replace -a '"' '')
    set ext $(echo "$filename" | sed 's/.*\.//')
    set id (shasum -a 256 ./images/$filename | awk '{ print $1 }')
    set prefix "img_"
    mv "images/$filename" "images/$prefix$id.$ext"
    sed -i ".bak" "s/$filename/$prefix$id.$ext/g" staffv2.json
    echo $id
end;
rm staffv2.json.bak