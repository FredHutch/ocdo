FROM ubuntu:24.04

RUN apt-get update -y

RUN apt-get install -y curl

RUN curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v1.5.56/quarto-1.5.56-linux-amd64.deb

RUN dpkg -i quarto-1.5.56-linux-amd64.deb

RUN rm quarto-1.5.56-linux-amd64.deb

ADD . /build

WORKDIR /build

RUN quarto render

FROM nginx:1.27

COPY extra.conf /etc/nginx/conf.d/

COPY --from=0 /build/_site /usr/share/nginx/html

COPY dasl /usr/share/nginx/html/dasl
