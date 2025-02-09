FROM python:3.12-slim-bullseye
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD [ "gunicorn", "-w", "4", "app:app", "-b", "0.0.0.0:5000" ]