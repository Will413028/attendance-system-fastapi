FROM python:3.12.1-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

CMD alembic upgrade head;uvicorn main:app --host 0.0.0.0 --port 8000