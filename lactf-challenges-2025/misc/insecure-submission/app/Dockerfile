# Use Python base image
FROM python:3.12-slim

# Install necessary packages
RUN pip install flask gunicorn

# Set working directory
WORKDIR /app

# Copy application files
COPY app.py .
# COPY requirements.txt .

# # Install Python dependencies
# RUN pip install -r requirements.txt

# Expose port 80
EXPOSE 5000

# Start Nginx and Gunicorn
CMD gunicorn --bind 0.0.0.0:5000 app:app