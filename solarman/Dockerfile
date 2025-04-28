FROM python:3.11-alpine

WORKDIR /app

# Másoljuk át az egész solarman kódot
COPY solarman.py /app/
COPY requirements.txt /app/
COPY run.sh /run.sh

# Telepítsük a függőségeket
RUN pip install --no-cache-dir -r /app/requirements.txt && \
    chmod +x /run.sh

# A run.sh script indítja a kódot
CMD [ "/run.sh" ]
