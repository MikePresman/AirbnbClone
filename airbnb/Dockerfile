FROM ruby:2.7.4-alpine3.14

COPY Gemfile Gemfile.lock ./
COPY package.json package.lock ./

RUN ["bundle install"]
RUN ["bin/rails", "s"]