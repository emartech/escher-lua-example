FROM szerencsi/luajit:2.0.5

RUN apk update
RUN apk add \
    cmake \
    g++ \
    openssl-dev

RUN luarocks install escher
RUN luarocks install luasocket
