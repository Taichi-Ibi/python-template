.PHONY: lint
lint:
	uv run isort src
	uv run flake8 src

.PHONY: run
run:
	uv run -m src.your-app-name

.PHONY: test
test:
	uv run pytest

.PHONY: up
up:
	docker compose up --build