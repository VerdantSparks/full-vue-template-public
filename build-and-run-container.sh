tag=full-vue-template

docker build \
-t $tag:latest \
. && \
docker run -p 8080:8080 $tag:latest