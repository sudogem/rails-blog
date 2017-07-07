FROM ruby:2.3

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential nodejs \
    && rm -rf /var/lib/apt/lists/*

ENV APP_HOME /app/rails-blog
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install
RUN test -f $APP_HOME/tmp/pids/server.pid && rf $APP_HOME/tmp/pids/server.pid; true
ADD . $APP_HOME

# If no database yet then lets create it
RUN RAILS_ENV=development bundle exec rake db:setup
