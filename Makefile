.PHONY: pre-commit
pre-commit:
	uv run ruff check --fix .
	uv run ruff format .

.PHONY: run
run:
	uv run -m src.your_app_name

.PHONY: test
test:
	uv run pytest

.PHONY: up
up:
	docker compose up --build