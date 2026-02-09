FROM python:3.14-slim-bookworm

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 4000

CMD ["gunicorn", "-w", "1", "-b", "0.0.0.0:4000", "app:app"]
