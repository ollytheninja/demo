# Not pinning patch version so Renovate will update minor versions too
# https://docs.renovatebot.com/modules/versioning/#docker-versioning
FROM python:3.10-alpine@sha256:4543fd9295d8d4f7a61c80d8e490de0f1cb0b37b022dbc1dd92537101a81d149

WORKDIR /app

COPY src/requirements.txt .
RUN pip install -r requirements.txt

COPY src/ .

ENTRYPOINT ["python"]
CMD ["app.py"]
