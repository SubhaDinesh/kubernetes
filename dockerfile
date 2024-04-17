FROM ubuntu:20.04
WORKDIR /app
#COPY app.py /app
RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y curl
RUN apt-get update && apt-get install -y awscli
RUN git clone https://github.com/SubhaDinesh/kubernetes.git
RUN curl -o test.txt https://freetestdata.com/wp-content/uploads/2023/11/7.7-KB.txt
ENV AWS_ACCESS_KEY_ID=AKIAVRUVSDG3USRLHVPA
RUN aws configure --region us-east-1
RUN ls -l test.txt
RUN aws s3 ls
WORKDIR /app/kubernetes
CMD ["bash"]
