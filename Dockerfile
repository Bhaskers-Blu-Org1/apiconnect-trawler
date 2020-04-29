FROM alpine:3.9
RUN apk update && apk add python3 py3-pip
COPY requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt
COPY trawler.py /app/
CMD /app/trawler.py