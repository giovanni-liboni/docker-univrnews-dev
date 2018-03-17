FROM google/cloud-sdk:alpine

RUN apk add --no-cache ruby ruby-rdoc ruby-irb curl ca-certificates git
RUN apk --update add go && rm -rf /var/cache/apk/*
RUN gem install dpl --no-doc
RUN gcloud --quiet components install cloud-datastore-emulator app-engine-python app-engine-go