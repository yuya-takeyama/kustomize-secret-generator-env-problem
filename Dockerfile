FROM ruby:2.5.1-alpine3.7

RUN apk --update add bash curl && \
  curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/v1.0.8/kustomize_1.0.8_linux_amd64 -o /usr/local/bin/kustomize && \
  chmod +x /usr/local/bin/kustomize
COPY . /work
WORKDIR /work

CMD ["bash"]
