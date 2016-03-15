FROM scratch
MAINTAINER Juan Jose Amor <jjamorNOSPAM@gmail.com>
EXPOSE 8087

# You need to build bin/discovery-linux64-static first; check build-static.

ADD bin/discovery-linux64-static /discovery

CMD ["--addr=:8087"]
ENTRYPOINT ["/discovery"]
