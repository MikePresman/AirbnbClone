FROM ruby:2.7.0-alpine3.11

ENV APP_HOME /app
ENV RAILS_ENV production

WORKDIR /app
USER root

# install dependencies for application these are specific to alpine
RUN apk -U add --no-cache --update \
build-base \
git \
vim \
postgresql-dev \
postgresql-client \
ruby-diff-lcs \
libxml2-dev \
libxslt-dev \
linux-headers \
nodejs \
yarn \
imagemagick \
tzdata \
less \
ruby-nokogiri \
&& rm -rf /var/cache/apk/* \
&& mkdir -p $APP_HOME 


COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY app ./app
COPY bin ./bin
COPY config ./config  
COPY db ./db
COPY lib ./lib
COPY public ./public
COPY config.ru ./


RUN SECRET_KEY_BASE=change_this_with_sops

CMD ["rails", "server", "-b", "0.0.0.0"]