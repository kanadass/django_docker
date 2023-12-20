FROM python:3.11

WORKDIR src
COPY requirements.txt .

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

COPY . .

ENV MY_ENV=netology
EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000", "--noreload"]


