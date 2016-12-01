FROM openresty/openresty:1.11.2.2-xenial

# Install cpanm and Test::NGINX
RUN apt-get install -qq -y cpanminus && cpanm --notest Test::Nginx

ENV PATH /usr/local/openresty/bin:/usr/local/openresty/luajit/bin/:$PATH
