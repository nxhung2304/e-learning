FROM ruby:3.3.1

RUN apt-get update -y && \
    apt-get install -y \
    build-essential \
    libpq-dev \
    postgresql-client \
    nodejs \
    npm \
    yarn \
    net-tools

RUN ln -sf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime

WORKDIR /app

COPY Gemfile* /app/

RUN gem install bundler
RUN bundle install
