FROM docker:latest
LABEL maintainer="Bryan CS <iambryancs.github.io>"

ENV AWS_ACCESS_KEY_ID access
ENV AWS_SECRET_ACCESS_KEY secret
ENV AWS_DEFAULT_REGION us-east-1

RUN apk update && apk add curl
RUN curl -L https://s3.us-east-1.amazonaws.com/mon-put-instance-data/1.0.0/linux/mon-put-instance-data -o /usr/bin/mon-put-instance-data && \
    chmod +x /usr/bin/mon-put-instance-data && \
    mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]