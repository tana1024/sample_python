FROM gitpod/workspace-full
USER gitpod

CMD echo "pip start"
WORKDIR /tmptmp/
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN sudo apt-get update -q && \
    sudo apt-get install -y libgl1-mesa-dev && \
    sudo apt-get install -y libnss3 && \
    sudo apt-get install -y libxcomposite-dev && \
    sudo apt-get install -y libxcursor-dev && \
    sudo apt-get install -y libxi6 libgconf-2-4 && \
    sudo apt-get install -y libxtst6 && \
    sudo apt-get install -y libxrandr-dev

