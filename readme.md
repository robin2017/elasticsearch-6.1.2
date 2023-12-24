## 初始化数据

```
curl -XPUT http://localhost:19200/shopping
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

## postman
![picture 2](images/5a9221025b36142776064e7e64db4e80cc44ec09a5484a59d2a540414b5f2c4c.png)  
![picture 3](images/298bb1e9ffea2f922767982697f9554ef508ec19ef674ad368834d5c14e56d8c.png)  
