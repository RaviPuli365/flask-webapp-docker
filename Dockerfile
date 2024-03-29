# syntax=docker/dockerfile:1
FROM python:3.10.5-alpine

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3", "-m" , "flask", "run", "--host=52.90.152.228"]
