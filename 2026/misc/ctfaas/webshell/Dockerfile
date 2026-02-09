FROM python:3.14-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    curl wget kubectl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 80

CMD ["python", "app.py"]
