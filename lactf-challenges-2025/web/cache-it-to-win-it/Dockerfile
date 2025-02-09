FROM python:3.12-slim-bookworm
WORKDIR /app
RUN apt-get update && apt-get install -y libmariadb3 libmariadb-dev gcc
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .env ./
CMD [ "gunicorn", "-w", "4", "app:app", "-b", "0.0.0.0:5000" ]