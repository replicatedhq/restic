FROM alpine:3.6

RUN apk add --update openssl
RUN cd /tmp && \
  wget https://github.com/restic/restic/releases/download/v0.6.1/restic_0.6.1_linux_386.bz2 && \
  bzip2 -d restic_0.6.1_linux_386.bz2 && \
  mv restic_0.6.1_linux_386 /restic && \
  chmod a+x /restic

ENTRYPOINT ["/restic"]
