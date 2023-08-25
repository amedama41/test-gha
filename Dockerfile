FROM debian:12.1-slim

RUN groupadd -r test \
  && useradd -m -g test test \
  && mkdir /test \
  && chown test /test

USER test
WORKDIR /test

CMD ["sleep", "10000000"]
