FROM python:3.12.3-bookworm

ENV APP_PATH /app
RUN mkdir $APP_PATH

COPY . $APP_PATH

RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    git \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

WORKDIR $APP_PATH
EXPOSE 8501