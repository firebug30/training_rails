FROM ruby:2.4.2
ENV LANG C.UTF-8

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y \
      build-essential \
      nodejs \
      mysql-client

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install -j4

COPY . /usr/src/app
