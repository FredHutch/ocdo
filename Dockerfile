FROM ubuntu:24.04

RUN apt-get update -y

RUN apt-get install -y curl git

RUN curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v1.5.56/quarto-1.5.56-linux-amd64.deb

RUN dpkg -i quarto-1.5.56-linux-amd64.deb

RUN rm quarto-1.5.56-linux-amd64.deb

# Install Zola
RUN curl -LO https://github.com/getzola/zola/releases/download/v0.22.1/zola-v0.22.1-x86_64-unknown-linux-gnu.tar.gz \
    && tar -xzf zola-v0.22.1-x86_64-unknown-linux-gnu.tar.gz \
    && mv zola /usr/local/bin/ \
    && rm zola-v0.22.1-x86_64-unknown-linux-gnu.tar.gz

ADD . /build

WORKDIR /build

RUN quarto render

# Clone and build the proof site
RUN git clone --depth 1 https://github.com/FredHutch/proof.git /proof

WORKDIR /proof

RUN zola build --base-url /proof/

FROM nginx:1.27

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=0 /build/_site /usr/share/nginx/html

RUN ls -l /usr/share/nginx/html/index.html

COPY dasl /usr/share/nginx/html/dasl


RUN ls -l /usr/share/nginx/html/dasl/index.html

COPY --from=0 /proof/public /usr/share/nginx/html/proof

RUN ls -l /usr/share/nginx/html/proof/index.html

