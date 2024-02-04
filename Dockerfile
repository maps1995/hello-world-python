FROM docker.io/python@sha256:14cfc61fc2404da8adc7b1cb1fcb299aefafab22ae571f652527184fbb21ce69
WORKDIR /service
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . ./
EXPOSE 8080
ENTRYPOINT ["python3", "app.py"]
