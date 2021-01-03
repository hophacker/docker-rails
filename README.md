# docker-rails

Building rails docker image is hard in China, this project makes it easy.


## What it does
* Change alpine source to `mirrors.ustc.edu.cn`
* Mirror gem soruce `https://rubygems.org` to `https://gems.ruby-china.com`
* Change timezone to `Asia/Shanghai`
* Add necessary packages, for example: `git`

## How to use
`docker pull registry.cn-hangzhou.aliyuncs.com/ruilisi/rails:1.0.0`
