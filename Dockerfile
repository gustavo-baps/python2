FROM python:3.8

WORKDIR /app

COPY projeto-python/ /app/projeto-python/
COPY venv/ /app/venv/
COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "projeto-python/manage.py", "runserver", "0.0.0.0:8000"]
