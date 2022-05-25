# Not pinning patch version so Renovate will update minor versions too
# https://docs.renovatebot.com/modules/versioning/#docker-versioning
FROM python:3.10-alpine@sha256:f4c1b7853b1513eb2f551597e2929b66374ade28465e7d79ac9e099ccecdfeec

WORKDIR /app

COPY src/requirements.txt .
RUN pip install -r requirements.txt

COPY src/ .

ENTRYPOINT ["python"]
CMD ["app.py"]
