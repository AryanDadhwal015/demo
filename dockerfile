FROM alpine:3.15

RUN apk add --no-cache bash nc cowsay fortune-mod

COPY wisecow.sh /usr/local/bin/wisecow.sh
RUN chmod +x /usr/local/bin/wisecow.sh

EXPOSE 4499
CMD ["/usr/local/bin/wisecow.sh"]
