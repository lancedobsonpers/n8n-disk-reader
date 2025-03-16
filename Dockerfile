FROM alpine
RUN apk add --no-cache busybox-extras
ENV PORT=10000
CMD ["sh", "-c", "httpd -f -p $PORT"]
