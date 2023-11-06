FROM python:3.8-alpine3.12

RUN apk --no-cache add libarchive-tools git
RUN mkdir /websites

WORKDIR /websites

ADD websites /websites 

VOLUME /websites/homebrew

EXPOSE 7775

CMD ["python3","-m","http.server","7775"]
