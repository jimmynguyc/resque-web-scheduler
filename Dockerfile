FROM ruby:2.6-alpine

RUN apk update && \
    apk add --no-cache build-base
RUN gem install resque-web resque-scheduler tzinfo-data
RUN apk del build-base

COPY config-dynamic.ru /config.ru

ENTRYPOINT ["resque-web", "/config.ru", "-FL"]
EXPOSE 5678

CMD ["-h"]

WORKDIR /data


