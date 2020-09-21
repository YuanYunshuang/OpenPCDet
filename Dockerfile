FROM scrin/dev-spconv:latest

WORKDIR /usr/src

RUN sudo apt-get update

RUN git clone https://github.com/open-mmlab/OpenPCDet.git

WORKDIR /usr/src/OpenPCDet


# && sudo apt-get install -y python3-pip &&
RUN pip install -r requirements.txt

RUN python ./setup.py develop


