FROM python:3.12-slim-bookworm

WORKDIR /app
RUN pip install --no-cache-dir flask gunicorn mistune PyYAML
COPY static/ /app/static/
COPY templates/ /app/templates/
COPY app.py /app
COPY flag /flag

CMD [ "gunicorn", "-w", "1", "app:app", "-b", "0.0.0.0:3000" ]
