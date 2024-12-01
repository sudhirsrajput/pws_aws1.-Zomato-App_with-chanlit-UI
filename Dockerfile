FROM python:3.9.10-slim-buster

WORKDIR /app

COPY . /app

# RUN pip install -r requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python3", "chainlit", "run", "app.py"]