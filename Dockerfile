FROM python:3.7.4
WORKDIR /service2
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5002
ENTRYPOINT [ "python", "app.py" ]