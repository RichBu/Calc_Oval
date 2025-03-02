docker build --platform linux/amd64 -t richbu/img-mobilinq:latest -f Dockerfile-mobilinq .
docker tag richbu/img-mobilinq richbu/img-mobilinq:latest
docker push richbu/img-mobilinq:latest
