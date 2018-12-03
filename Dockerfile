#set maintainer
LABEL maintainer "helloworld"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://172.17.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
