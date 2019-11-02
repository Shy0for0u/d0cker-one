FROM ruby:2.6.2

LABEL MAINTAINER="dgorold-"

RUN apt-get -y update && apt-get install -y \
					build-essential \
					libpq-dev \
					nodejs \
					sqlite3 \
					gem
RUN gem install bundler --no-document
RUN gem install rails --no-document
RUN gem install rake -v 12.3.2 --no-document

ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD EXPOSE 3000
ONBUILD RUN bundle install 
ONBUILD RUN rake db:migrate
ONBUILD RUN	rake db:seed
ONBUILD RUN	rake 
