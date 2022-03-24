FROM python:alpine
COPY requirements.txt .
RUN \
 apk add --no-cache postgresql-libs && \
 apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev && \
 pip install -r requirements.txt && \
 apk --purge del .build-deps
ENTRYPOINT ["/usr/local/bin/pgcli"]
