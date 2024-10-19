# Not pinning patch version so Renovate will update minor versions too
# https://docs.renovatebot.com/modules/versioning/#docker-versioning
FROM python:3.10-alpine@sha256:00faa7c5ffa05fe03d364e4ee00c54abafa72410724ea535f8e9540b53c03774

WORKDIR /app

COPY src/requirements.txt .
RUN pip install -r requirements.txt

COPY src/ .

ENTRYPOINT ["python"]
CMD ["app.py"]
