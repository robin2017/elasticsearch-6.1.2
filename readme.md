## 初始化数据

```
 

curl --location --request PUT 'http://localhost:19200/shopping' \
--header 'Content-Type: application/json' \
--header 'Cookie: locale=zh-cn' \
--data '{
    "settings": {
        "number_of_shards": 1,
        "number_of_replicas": 0
    },
    "mappings": {
        "doc": {
            "properties": {
                "category": {
                    "type": "text",
                    "fields": {
                        "keyword": {
                            "type": "keyword",
                            "ignore_above": 256
                        }
                    }
                },
                "price": {
                    "type": "long"
                },
                "title": {
                    "type": "keyword",
                    "fields": {
                        "keyword": {
                            "type": "keyword",
                            "ignore_above": 256
                        }
                    }
                }
            }
        }
    }
}'


curl -XPOST http://localhost:19200/shopping/doc   -H "Content-Type:application/json" -d '{"title":"小米手机4","category":"小米","price":3999}'
curl -XPOST http://localhost:19200/shopping/doc   -H "Content-Type:application/json" -d '{"title":"小米手机6","category":"小米","price":3999}'
curl -XPOST http://localhost:19200/shopping/doc   -H "Content-Type:application/json" -d '{"title":"小米手机8","category":"小米","price":3999}'
curl -XPOST http://localhost:19200/shopping/doc   -H "Content-Type:application/json" -d '{"title":"小米手机12","category":"小米","price":3999}'
curl -XPOST http://localhost:19200/shopping/doc   -H "Content-Type:application/json" -d '{"title":"小米手机16","category":"小米","price":3999}'
curl -XPOST http://localhost:19200/shopping/doc   -H "Content-Type:application/json" -d '{"title":"红米手机5","category":"小米","price":1999}'
curl -XPOST http://localhost:19200/shopping/doc   -H "Content-Type:application/json" -d '{"title":"红米手机note","category":"小米","price":1599}'
curl -XPOST http://localhost:19200/shopping/doc   -H "Content-Type:application/json" -d '{"title":"navoa7","category":"华为","price":1999}'
 

curl -XPUT http://127.0.0.1:19200/test1
curl -H "Content-Type: application/json" -XPUT http://127.0.0.1:19200/test2 -d '{"settings":{"number_of_replicas": 2,"number_of_shards":3}}'
curl -H "Content-Type: application/json" -XPUT http://127.0.0.1:19200/test1/docs/1 -d '{"name": "hello,test1"}'
curl -H "Content-Type: application/json" -XPUT http://127.0.0.1:19200/test2/docs/1 -d '{"name": "hello,test2"}'
```


数据查询结果

![picture 0](images/f8ec33978f3d78295e482fe6caa59f245c2ae38844f9a86487d3e4d2266c2386.png)  
![picture 1](images/c4c2a5fe684433671f836cf0e2071764be7ac3a95de5676322b83d53c7525640.png)  

### 类比mysql


create table `shopping`(
`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
`title` varchar(255) not null,
`category` VARCHAR(255) not null,
`price` INT,
PRIMARY key(id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO `shopping` (title,category,price) values
('小米手机4','小米',3999),
('小米手机6','小米',3999),
('小米手机8','小米',3999),
('小米手机12','小米',3999),
('小米手机16','小米',3999),
('红米手机5','小米',1999),
('红米手机note','小米',1599),
('navoa7','华为',1999);

![picture 4](images/a359d0461408d18060f20b0cbfa5fd091c4345a6bf8247b8bd2df7e0eeadd0c1.png)  


## postman
![picture 2](images/5a9221025b36142776064e7e64db4e80cc44ec09a5484a59d2a540414b5f2c4c.png)  
![picture 3](images/298bb1e9ffea2f922767982697f9554ef508ec19ef674ad368834d5c14e56d8c.png)  


## 字段属性

![picture 5](images/e5f666ce1514255ddb4be3235ebe1ef14b0b1a7f4d209c95bdaeb6ebcb59bb7d.png)  

### 更改属性（只能在创建索引时指定）


## docker-7.1.4-数据
+ 业务中使用这个版本7.4.2


```
curl --location --request PUT 'http://localhost:29200/shopping' \
--header 'Content-Type: application/json' \
--header 'Cookie: locale=zh-cn' \
--data '{
    "settings": {
        "number_of_shards": 1,
        "number_of_replicas": 0
    }
}'


// doc改为_doc，v7版本需要
curl -XPOST http://localhost:29200/shopping/_doc   -H "Content-Type:application/json" -d '{"title":"小米手机4","category":"小米","price":3999}'
curl -XPOST http://localhost:29200/shopping/_doc   -H "Content-Type:application/json" -d '{"title":"小米手机6","category":"小米","price":3999}'
curl -XPOST http://localhost:29200/shopping/_doc   -H "Content-Type:application/json" -d '{"title":"小米手机8","category":"小米","price":3999}'
curl -XPOST http://localhost:29200/shopping/_doc   -H "Content-Type:application/json" -d '{"title":"小米手机12","category":"小米","price":3999}'
curl -XPOST http://localhost:29200/shopping/_doc   -H "Content-Type:application/json" -d '{"title":"小米手机16","category":"小米","price":3999}'
curl -XPOST http://localhost:29200/shopping/_doc   -H "Content-Type:application/json" -d '{"title":"红米手机5","category":"小米","price":1999}'
curl -XPOST http://localhost:29200/shopping/_doc   -H "Content-Type:application/json" -d '{"title":"红米手机note","category":"小米","price":1599}'
curl -XPOST http://localhost:29200/shopping/_doc   -H "Content-Type:application/json" -d '{"title":"navoa7","category":"华为","price":1999}'
 

curl -XPUT http://127.0.0.1:29200/test1
curl -H "Content-Type: application/json" -XPUT http://127.0.0.1:29200/test2 -d '{"settings":{"number_of_replicas": 2,"number_of_shards":3}}'
curl -H "Content-Type: application/json" -XPUT http://127.0.0.1:29200/test1/docs/1 -d '{"name": "hello,test1"}'
curl -H "Content-Type: application/json" -XPUT http://127.0.0.1:29200/test2/docs/1 -d '{"name": "hello,test2"}'
```
