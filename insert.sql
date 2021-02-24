SET foreign_key_checks=1;

USE crocusdb;

-- ユーザ情報登録

INSERT INTO mst_user(user_name,password,family_name,first_name,family_name_kana,first_name_kana,gender) VALUES ("yamada@gmail.com","taro123","山田","太郎","やまだ","たろう",0);

-- カテゴリ情報登録

INSERT INTO mst_category 
    (category_name, category_description)
    VALUES("北海道", "北海道");

INSERT INTO mst_category 
    (category_name, category_description)
    VALUES("関東", "茨城・群馬・栃木・埼玉・千葉・神奈川・東京");

INSERT INTO mst_category 
    (category_name, category_description)
    VALUES("九州", "福岡・佐賀・長崎・熊本・大分・宮崎・鹿児島・沖縄");

-- 商品情報登録

INSERT INTO mst_product
    (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
    VALUES("函館ラーメン", "はこだてらーめん", "細麺にあっさり塩味スープがやみつきになります。",1,690,"/img/hakodate.jpg", "2021/2/8", "しお家");

INSERT INTO mst_product
    (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
    VALUES("旭川ラーメン", "あさひかわらーめん", "魚介の旨味が詰まった伝統的な醤油の香りが食欲をそそります。", 1,680,"/img/asahikawa.jpg", "2021/2/8", "旭川大吉ラーメン");

INSERT INTO mst_product
    (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
    VALUES("札幌ラーメン", "さっぽろらーめん", "濃厚な味噌の香りがたまりません。",1,820,
           "/img/sapporo.jpg", "2021/2/8", "すみれ");

INSERT INTO mst_product
    (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
    VALUES("横浜家系ラーメン", "よこはまいえけいらーめん", "豚骨醤油スープと太麺のラーメン。ライスといっしょに！",2,720, "/img/yokohama.jpg", "2021/2/8", "吉村家");

INSERT INTO mst_product
    (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
    VALUES("佐野ラーメン", "さのらーめん", "佐野市の名物！あっさり醤油味のラーメン",2, 650, "/img/sano.jpg", "2021/2/8", "麺屋　ようすけ");

INSERT INTO mst_product
    (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
    VALUES("博多ラーメン", "はかたらーめん", "豚骨ラーメンの王道。お好みで紅ショウガとゴマをどうぞ",3,790, "/img/hakata.jpg", "2021/2/8", "魁龍");

INSERT INTO mst_product
    (product_name, product_name_kana, product_description, category_id, price, image_full_path, release_date, release_company)
    VALUES("熊本ラーメン", "くまもとらーめん", "知名度抜群！濃厚な風味と焦がしニンニクが決め手！",3,720, "/img/kumamoto.jpg", "2021/2/8", "ラーメン赤組");
    


