FROM soulteary/cronicle:0.9.80

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

RUN apk add --no-cache python3 py3-pip

WORKDIR /opt/cronicle
COPY bin/script-plugin.py ./bin/script-plugin.py
RUN chmod +x ./bin/script-plugin.py
COPY config/python.pixl ./import/python.pixl

COPY bin/entrypoint.sh ./bin/

CMD ["/bin/sh", "bin/entrypoint.sh"]