FROM python:alpine
ENV REDIS_HOST=redis
ENV REDIS_PORT=6379
ENV REDIS_DB=0
ENV ENVIRONMENT=dev 
ENV HOST=localhost
ENV PORT=3000
RUN apk add git && \
    git clone https://github.com/AymanMagdy/solving-devops-challenges.git && \
    pip install -r solving-devops-challenges/App/requirements.txt
ENTRYPOINT [ "python3", "solving-devops-challenges/App/hello.py" ]
