FROM python:alpine

COPY requirements.txt docker-entrypoint.sh /
COPY ia.ini /root/.ia

RUN pip install -r /requirements.txt && \
    apk add ffmpeg && \
    chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
