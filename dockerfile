FROM ubuntu-minimal:latest
WORKDIR /app
COPY app.py /app
RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y curl
RUN git clone https://github.com/SubhaDinesh/kubernetes.git
RUN curl -o requirement.txt https://github.com/SubhaDinesh/my-test/blob/main/reqiurement.txt
RUN ls -l requirement.txt
WORKDIR /app/kubernetes
CMD ["bash"]
