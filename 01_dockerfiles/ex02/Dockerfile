FROM ruby

RUN apt-get -y update \
	&& apt-get -y install sqlite3 nodejs \
	&& gem update \
	&& gem install bundler rails

EXPOSE 3000
ONBUILD COPY . /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD RUN bundle install && rails db:migrate && rails db:seed
