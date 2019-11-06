FROM ruby:2.6.5
RUN mkdir /meeting_schedule_container
ENV APP_ROOT /meeting_schedule_container
WORKDIR $APP_ROOT

RUN apt update -qq && \
    apt install -y nodejs \
                   --no-install-recomends && \
    rm -rf /var/lib/apt/lists/*

COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT

# bundleの設定
RUN \
  echo 'gem: --no-document' >> ~/.gemrc && \
  cp ~/.gemrc /etc/gemrc && \
  chmod uog+r /etc/gemrc && \
  bundle config --global build.nokogiri --use-system-libraries && \
  bundle config --global jobs 4 && \
  bundle install && \
  rm -rf ~/.gem

COPY . $APP_ROOT
