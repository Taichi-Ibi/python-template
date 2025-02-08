FROM python:3.11-slim-bookworm
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
RUN apt-get update && apt-get install -y make

WORKDIR /app
COPY pyproject.toml ./
COPY Makefile ./
COPY src/ ./src/

EXPOSE 8080
CMD [ "make", "run" ]