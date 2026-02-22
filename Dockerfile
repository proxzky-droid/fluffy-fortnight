FROM ubuntu:24.04

# Install python sama pip
RUN apt-get update && apt-get install -y python3 python3-pip && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt --break-system-packages

# Jalanin pake Gunicorn biar stabil
CMD ["gunicorn", "--bind", "0.0.0.0:10000", "app:app"]
