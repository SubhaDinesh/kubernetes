FROM ubuntu:20.04
WORKDIR /root
#COPY app.py /app
RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y curl
RUN git clone https://github.com/SubhaDinesh/kubernetes.git
RUN curl -o requirement.txt https://github.com/SubhaDinesh/my-test/blob/main/reqiurement.txt
RUN ls -l requirement.txt
WORKDIR /root/kubernetes
CMD ["bash"]
