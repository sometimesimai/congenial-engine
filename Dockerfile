FROM python:3.8

WORKDIR /app

ADD requirements.txt requirements.txt

ADD bot.py bot.py

RUN pip install -r requirements.txt

ADD plugins plugins

EXPOSE 8080

CMD ["python", "bot.py"]

