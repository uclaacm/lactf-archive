FROM python:3.10-slim-bullseye

RUN pip install --no-cache-dir Flask gunicorn

COPY static /static

COPY gerard_way2001.py /

USER 1000

CMD ["gunicorn", "-w", "1", "-b", "0.0.0.0:8080", "gerard_way2001:app"]