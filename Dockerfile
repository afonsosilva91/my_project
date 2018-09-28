FROM python:3.6

ENV PYTHONUNBUFFERED 1

COPY . /app

RUN pip install -r /app/requirements.txt \
    && chmod +x start.sh

WORKDIR /app

EXPOSE 8000

CMD ["start.sh"]