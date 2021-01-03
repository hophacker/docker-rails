FROM ruby:2.7.2-alpine3.12
RUN printf "http://mirrors.ustc.edu.cn/alpine/v3.12/main/\nhttp://mirrors.ustc.edu.cn/alpine/v3.12/community/\n" > /etc/apk/repositories
WORKDIR /usr/src/app
RUN apk update && \
    gem install bundler:2.1.4 && \
    bundle config set without 'development test' && \
    bundle config mirror.https://rubygems.org https://gems.ruby-china.com && \
    apk add --no-cache tzdata libpq git && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    echo 'gem: --no-document' >> ~/.gemrc && \
    cp ~/.gemrc /etc/gemrc && \
    chmod +r /etc/gemrc
RUN apk add --no-cache autoconf automake build-base postgresql-dev
