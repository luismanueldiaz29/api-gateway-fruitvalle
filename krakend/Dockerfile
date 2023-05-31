FROM devopsfaith/krakend:2.1 AS builder

WORKDIR /home/api-gateway

ADD templates templates
ADD config config
ADD microservices microservices
COPY config.json /etc/krakend/krakend.json

FROM builder AS production

ENV FC_ENABLE=1
ENV FC_SETTINGS='microservices'
ENV FC_PARTIALS='config'
ENV FC_TEMPLATES='templates'

EXPOSE 3000
CMD [ "run", "-c", "/etc/krakend/krakend.json", "-p", "3000" ]