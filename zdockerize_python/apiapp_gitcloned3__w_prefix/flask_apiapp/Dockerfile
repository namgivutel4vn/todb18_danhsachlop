FROM python:3.12-alpine

# i dep pkg
WORKDIR                        /app
COPY ./requirements.txt           ./requirements.txt
RUN pip install --no-cache-dir -r ./requirements.txt
#               --no-cache-dir no saving to cache dir eg ~/.cache/pip ie docker image size kept small

###

# run
COPY ./src/app.py    ./src/app.py

EXPOSE 5000
CMD python3 ./src/app.py
