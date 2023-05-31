FC_ENABLE=1 \
FC_SETTINGS=microservices \
FC_PARTIALS=config \
FC_TEMPLATES=templates \
FC_OUT=out.json \
AUTH_HOST=http://localhost:8098 krakend run -c config.json -p 3000 