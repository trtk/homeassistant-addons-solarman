FROM python:3.11-alpine

WORKDIR /app

# Másoljuk át az egész solarman kódot
COPY solarman.py /app/
COPY requirements.txt /app/
Copy mqtt.py /app/
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Telepítsük a függőségeket
RUN pip install --no-cache-dir -r /app/requirements.txt


# A run.sh script indítja a kódot
CMD [ "/run.sh" ]
