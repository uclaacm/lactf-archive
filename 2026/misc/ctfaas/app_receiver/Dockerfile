FROM python:3.14-slim

# Install Skopeo and system deps
RUN apt-get update && apt-get install -y skopeo && rm -rf /var/lib/apt/lists/*

# Install Python deps
RUN pip install flask kubernetes werkzeug

WORKDIR /app
COPY app.py .

# Create uploads directory
RUN mkdir /tmp/uploads

EXPOSE 5000
CMD ["python", "app.py"]