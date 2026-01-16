FROM python:3.12-alpine

WORKDIR /app

# i dep pkg
RUN python3 -m pip install --upgrade pip uv
COPY ./pyproject.toml .
RUN uv sync

# run app
COPY ./src ./src
EXPOSE 5000
CMD uv run  python3 ./src/app.py
