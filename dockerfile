FROM ubuntu:20.04
WORKDIR /app
#COPY app.py /app
RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y curl
#helm
RUN curl -fsSL https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
RUN apt-get update && apt-get install -y --no-install-recommends curl && rm -rf /var/lib/apt/lists/*
#kube ctl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && rm kubectl
#git
RUN git clone https://github.com/SubhaDinesh/kubernetes.git
#curl
RUN curl -o test.txt https://freetestdata.com/wp-content/uploads/2023/11/7.7-KB.txt
RUN ls -l test.txt
WORKDIR /app/kubernetes
CMD ["bash","status"]
#CMD ["helm", "version"]
#CMD ["kubectl", "version", "--client"]

