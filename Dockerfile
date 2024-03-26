# Not pinning patch version so Renovate will update minor versions too
# https://docs.renovatebot.com/modules/versioning/#docker-versioning
FROM python:3.12-alpine@sha256:c7eb5c92b7933fe52f224a91a1ced27b91840ac9c69c58bef40d602156bcdb41

WORKDIR /app

COPY src/requirements.txt .
RUN pip install -r requirements.txt

COPY src/ .

ENTRYPOINT ["python"]
CMD ["app.py"]
