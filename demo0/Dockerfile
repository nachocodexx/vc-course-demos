FROM python:3.8-alpine
ENV NAME=nachoenv
WORKDIR /app 
COPY ./requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt
COPY ./src/main.py .
CMD ["python", "/app/main.py"]
