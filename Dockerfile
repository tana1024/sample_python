FROM python:3.9.0

CMD echo "pip start"
WORKDIR /tmptmp/
COPY requirements.txt .
RUN pip install -r requirements.txt

RUN sudo apt-get install -y libgl1-mesa-dev
