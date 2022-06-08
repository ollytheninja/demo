# Not pinning patch version so Renovate will update minor versions too
# https://docs.renovatebot.com/modules/versioning/#docker-versioning
FROM python:3.10-alpine@sha256:97725c6081f5670080322188827ef5cd95325b8c69e401047f0fa0c21910042d

WORKDIR /app

COPY src/requirements.txt .
RUN pip install -r requirements.txt

COPY src/ .

ENTRYPOINT ["python"]
CMD ["app.py"]
