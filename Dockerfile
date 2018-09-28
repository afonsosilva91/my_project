FROM python:3.6

ENV PYTHONUNBUFFERED 1

COPY . /app

RUN pip install -r /app/requirements.txt \
    && chmod +x /app/start.sh

WORKDIR /app

EXPOSE 8000

CMD ["/app/start.sh"]