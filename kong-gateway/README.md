# Configuring a Service

## Expose your Services with Kong Gateway

### Add Service

ตั้งชื่อ service และระบุ url ของ service (ต้องใส่ protocal http/https ด้วย)

```bash
curl -i -X POST \
 --url http://localhost:8001/services/ \
 --data 'name=example-service' \
 --data 'url=http://mockbin.org'
```

Verify

```bash
curl -i http://localhost:8001/services/example-service
```

### Add Route

ให้ใส่ชื่อ service ไป พร้อมระบุ path และตั้งชื่อไว้

```bash
curl -i -X POST http://localhost:8001/services/example-service/routes \
  --data 'paths[]=/mock' \
  --data name=mocking
```

Verify ใช้ผ่าน port 8000

```bash
curl -i -X GET http://localhost:8000/mock/request
```
