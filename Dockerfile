FROM debian
MAINTAINER Jack Firth <jackhfirth@gmail.com>

RUN apt-get update && \
    apt-get install -y wget sqlite3 && \
    rm -rf /var/lib/apt/lists/*

ENV RACKET_VERSION 7.5
ENV RACKET_INSTALLER_URL http://mirror.racket-lang.org/installers/$RACKET_VERSION/racket-$RACKET_VERSION-x86_64-linux-cs.sh

RUN wget --output-document=racket-install.sh $RACKET_INSTALLER_URL && \
    echo "yes\n1\n" | /bin/bash racket-install.sh && \
    rm racket-install.sh

CMD ["racket"]
