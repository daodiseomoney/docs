# in your Dockerfile
FROM sphinxdoc/sphinx

WORKDIR /dao_docs
ADD requirements.txt /dao_docs
RUN pip3 install -r requirements.txt