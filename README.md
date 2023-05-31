## API GATEWAY

### Initial project structure

```
.
├── krakend
│   ├── config
│   │   └── extra.json
│   ├── config.json
│   ├── docker-compose.yml
│   ├── Dockerfile
│   ├── microservices
│   │   ├── auth_login.json
│   │   ├── auth_renew.json
│   │   ├── auth_user.json
│   │   ├── _jwt.json
│   │   ├── _refreshJwt.json
│   │   └── _root.json
│   ├── octopusrc.yml
│   ├── out.json
│   ├── run.sh
│   └── templates
│       └── endpoint.prd.tmpl
└── README.md
```


## Example environment variable file 

#### Create .env in krakend folder

```
GATEWAY_PORT=3000
TIMEOUT=5s
AUTH_HOST=http://backend-authentication:5001
```

## Run with docker

#### Run command in krakend folder
```
docker compose up --build -d
```