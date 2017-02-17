FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.0

RUN gem install hiera-puppet --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["extlookup2hiera"]
CMD ["--help"]
