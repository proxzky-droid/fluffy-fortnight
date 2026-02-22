FROM ubuntu:24.04

RUN apt-get update && apt-get install -y python3 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Biar gak butuh file requirements.txt, kita lariin server internal python aja
CMD python3 -m http.server $PORT
