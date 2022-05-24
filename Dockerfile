FROM python:3.10.4-alpine@sha256:408d3bba4097872fa329ba8d49c8329ffc0011d5c494b0822727896c73fbbd00

WORKDIR /app

COPY src/requirements.txt .
RUN pip install -r requirements.txt

COPY src/ .

ENTRYPOINT ["python"]
CMD ["app.py"]
