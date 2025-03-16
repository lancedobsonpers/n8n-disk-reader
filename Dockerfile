FROM alpine
RUN apk add --no-cache busybox-extras
CMD ["httpd", "-f", "-p", "10000"]
