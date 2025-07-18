FROM rasa/rasa:3.1.2

WORKDIR /app

COPY . /app

# RUN rasa train

CMD ["run", "-m", "models", "--enable-api", "--cors", "*", "--debug"]
