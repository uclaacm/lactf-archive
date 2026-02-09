FROM python:3.14-slim-bookworm

WORKDIR /app
RUN python3 -m pip install --no-cache-dir flask gunicorn numpy pycryptodome
COPY static/ /app/static/
COPY NTRUSign/ /app/NTRUSign/
COPY app.py /app/

CMD ["gunicorn", "-w", "1", "-k", "gthread", "--threads", "80", "-b", "0.0.0.0:8000", "app:app"]
