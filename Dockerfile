FROM alpine:latest

RUN apk --update add rrdtool rrdtool-dev perl-app-cpanminus build-base wget make perl-dev cairo-dev libxml2-dev pango-dev groff libtool automake \
  && cpanm -n --no-man-pages GrowthForecast

EXPOSE 5125
VOLUME ["/var/lib/growthforecast"]
CMD ["growthforecast.pl", "--data-dir", "/var/lib/growthforecast"]