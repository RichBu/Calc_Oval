docker build --platform linux/amd64 -t richbu/img-calc-oval:latest -f Dockerfile-calc-oval .
docker tag richbu/img-calc-oval richbu/img-calc-oval:latest
docker push richbu/img-calc-oval:latest
