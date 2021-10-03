FROM python:alpine

COPY requirements.txt docker-entrypoint.sh /
COPY ia.ini /root/.ia

RUN apk add build-base && \
    pip install -r /requirements.txt && \
    apk add ffmpeg && \
    apk del build-base && \
    chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
