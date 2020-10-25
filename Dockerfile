FROM gitpod/workspace-full
USER gitpod

CMD echo "pip start"
WORKDIR /tmptmp/
COPY requirements.txt .
RUN pip install -r requirements.txt

RUN sudo apt-get update -q && \
    sudo apt-get install -y libgl1-mesa-dev
