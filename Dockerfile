FROM alpine

WORKDIR /helm-docs
ENV HELM_DOCS_VERSION=0.9.0

RUN apk --no-cache add curl

RUN curl -fsSLO https://github.com/norwoodj/helm-docs/releases/download/v${HELM_DOCS_VERSION}/helm-docs_${HELM_DOCS_VERSION}_Linux_x86_64.tar.gz \
  && tar xzvf helm-docs_${HELM_DOCS_VERSION}_Linux_x86_64.tar.gz -C /usr/local/bin helm-docs \
  && rm helm-docs_${HELM_DOCS_VERSION}_Linux_x86_64.tar.gz

CMD ["helm-docs"]
