FROM python:3.14-slim

WORKDIR /app

# Install Google Cloud SDK
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    openssh-client \
    && echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg \
    && apt-get update && apt-get install -y google-cloud-cli \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose port
EXPOSE 5000

# Run with gunicorn for production
# --preload ensures module-level code (like activate_service_account) runs at startup
# --access-logfile - writes access logs to stdout
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--workers", "5", "--preload", "--access-logfile", "-", "app:app"]
