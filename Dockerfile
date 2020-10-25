FROM gitpod/workspace-full
USER gitpod

CMD echo "pip start"
WORKDIR /tmptmp/
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN sudo apt-get update -q && \
    sudo apt-get install -y libgl1-mesa-dev
    
RUN sudo apt install gdebi-core && \
    sudo wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb && \
    sudo gdebi rstudio-1.2.1335-amd64.deb && \
    sudo adduser rstudiotest
