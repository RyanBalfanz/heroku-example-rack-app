FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /usr/src/app
COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install
COPY . ./
