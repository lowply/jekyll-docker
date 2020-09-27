FROM ruby:alpine
MAINTAINER Sho Mizutani <lowply@gmail.com>

WORKDIR /home
RUN apk update && apk add --no-cache g++ musl-dev make
RUN gem install jekyll

# This is a workaround to make this container work for both jekyll new and jekyll serve.
RUN jekyll new /tmp

CMD ["jekyll", "--help"]
