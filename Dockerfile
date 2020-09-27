FROM ruby:alpine
MAINTAINER Sho Mizutani <lowply@gmail.com>

WORKDIR /home
RUN apk update && apk add --no-cache g++ musl-dev make
RUN gem install jekyll bundler

CMD ["jekyll", "serve", "-H", "0.0.0.0", "-P", "4000"]
