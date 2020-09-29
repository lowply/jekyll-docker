FROM ruby:alpine
MAINTAINER Sho Mizutani <lowply@gmail.com>

WORKDIR /home
RUN apk update && apk add --no-cache g++ musl-dev make
RUN gem install bundler jekyll
RUN bundle config set path 'vendor/bundle'

CMD ["jekyll", "--help"]
