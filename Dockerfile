
FROM ubuntu:16.04 
RUN apt-get update 
RUN apt-get install -y python3 
RUN apt-get install -y python3-dev 
RUN apt-get install -y python3-pip
#RUN pip3 install --upgrade pip

RUN  ln -s /usr/bin/python3 /usr/bin/python
RUN python -m pip install requests
#RUN pip install requests
 
RUN mkdir /script 
COPY ex2.py /script
ENTRYPOINT ["python", "-u" , "/script/ex2.py"] 

