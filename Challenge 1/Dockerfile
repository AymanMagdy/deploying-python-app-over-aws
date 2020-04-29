FROM python:alpine
ENV REDIS_HOST=redis
ENV REDIS_PORT=6379
ENV REDIS_DB=0
ENV ENVIRONMENT=dev 
ENV HOST=localhost
ENV PORT=3000
RUN apk add git && \
    git clone https://github.com/MohamedMSaeed/DevOps-Challenge-Demo-Code.git && \
    pip install -r DevOps-Challenge-Demo-Code/requirements.txt
ENTRYPOINT [ "python3", "DevOps-Challenge-Demo-Code/hello.py" ]