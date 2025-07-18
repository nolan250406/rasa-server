FROM rasa/rasa:3.1.2

WORKDIR /app

COPY . /app

RUN rasa train

EXPOSE 5005

CMD ["rasa", "run", "--enable-api", "--cors", "*", "--debug"]
