FROM ubuntu:20.04
WORKDIR /root
#COPY app.py /app
RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y curl
RUN git clone https://github.com/SubhaDinesh/kubernetes.git
RUN curl -o test.txt https://freetestdata.com/wp-content/uploads/2023/11/7.7-KB.txt
RUN ls -l requirement.txt
WORKDIR /root/kubernetes
CMD ["bash"]
