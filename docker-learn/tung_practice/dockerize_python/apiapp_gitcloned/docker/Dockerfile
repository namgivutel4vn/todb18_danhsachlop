FROM python:3.12-alpine

# inastall uv
RUN python3 -m pip install --upgrade pip uv

WORKDIR /app
COPY ./.python-version .
COPY ./pyproject.toml .
COPY ./uv.lock .

# install dependencies
RUN uv sync

COPY ./src/app.py ./src/app.py
COPY ./src/service/db/dslop.json ./src/service/db/dslop.json

EXPOSE 5000

#CMD pwd;ls -lah;pwd
CMD uv run python3 ./src/app.py