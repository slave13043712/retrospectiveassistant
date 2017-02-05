FROM alpine:3.3
WORKDIR /opt/retrospectiveassistant
COPY ./retrospectiveassistant.sh .
ENTRYPOINT ["./retrospectiveassistant.sh"]

