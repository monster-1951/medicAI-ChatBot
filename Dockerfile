FROM python:3.12.6-slim

WORKDIR /app

COPY . /app

# Install git and any necessary build dependencies
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt


CMD ["python3", "app.py"]