FROM python:3-slim

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./main.py" ]
