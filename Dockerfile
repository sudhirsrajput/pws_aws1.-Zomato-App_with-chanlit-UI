# Use an appropriate base image, e.g., python:3.10-slim
FROM python:3.10-slim

# Set environment variables (e.g., set Python to run in unbuffered mode)
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app

# Copy your application's requirements and install them
COPY requirements.txt /app/

RUN pip install -r /app/requirements.txt

# Copy your application code into the container
COPY . /app/

EXPOSE 8080

CMD ["python", "-m", "chainlit", "run", "app.py", "-h", "--port", "8080"]

# FROM python:3.9.10-slim-buster

# WORKDIR /app

# COPY . /app

# # RUN pip install -r requirements.txt

# RUN pip install --upgrade pip
# RUN pip install -r requirements.txt

# # Expose port for Chainlit UI
# EXPOSE 8080

# CMD ["python3", "chainlit", "run", "app.py"]