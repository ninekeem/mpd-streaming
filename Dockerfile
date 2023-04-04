FROM alpine:latest
RUN apk add --no-cache \
	icu-data-full \
	mpd

COPY mpd.conf /etc/mpd.conf
ENTRYPOINT ["mpd", "--no-daemon", "--stderr"]
