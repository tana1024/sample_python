FROM python:3.7-stretch

CMD echo "pip start"
WORKDIR /tmptmp/
COPY requirements.txt .
RUN pip install -r requirements.txt
