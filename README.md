# boot-admin-vanilla
vanilla boot admin implementation, mainly to use as docker container to debug spring boot apps

usage (in docker compose): 

```yaml
  # this has the spring boot admin client jar
  boot-app:
    image: repo/boot-app:0.0.1-SNAPSHOT
    container_name: boot-app
    ports:
      - 11235:11235
    environment:
      - spring.boot.admin.client.url=http://boot-admin:1122
 admin:
    image: basharlabadi/vanilla-admin-boot:0.0.2
    environment:
      - spring.boot.admin.security.enabled=false
    ports:
      - 1122:1122
    healthcheck:
      test: "curl -sS http://localhost:1111/health"
      interval: 1s
      timeout: 60s
      retries: 120
    container_name: boot-admin
```
    
    
