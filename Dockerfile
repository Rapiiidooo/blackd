FROM python:3.10-slim AS builder
RUN apt update && apt install -y git build-essential \
    && pip install --upgrade pip setuptools wheel black[d]==22.8.0

FROM python:3.10-slim
COPY --from=builder /usr/local/ /usr/local/
EXPOSE 45484
ENTRYPOINT ["blackd", "--bind-host", "0.0.0.0", "--bind-port", "45484"]
