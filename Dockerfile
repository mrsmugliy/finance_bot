FROM python:3.8

WORKDIR /home

ENV TELEGRAM_API_TOKEN="1888971183:AAFfATZ0EZVeBvRqDa7JBVbqK9TZs_j4gt4"
ENV TELEGRAM_ACCESS_ID="1216934951"

ENV TZ=Europe/Warsaw
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN pip install -U pip aiogram pytz && apt-get update && apt-get install sqlite3
COPY *.py ./
COPY createdb.sql ./

ENTRYPOINT ["python", "server.py"]

