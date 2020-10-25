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
    sudo apt-get install -y libxcomposite-dev

#RUN sudo apt install gdebi-core -y
#RUN sudo wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
#RUN sudo gdebi rstudio-1.2.1335-amd64.deb
#RUN sudo adduser rstudiotest
