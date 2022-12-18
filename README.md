# docker-push-example

this shows a github action to push to github's docker repo

see https://docs.github.com/en/actions/publishing-packages/publishing-docker-images

# multi platform builds

```bash
docker login ghcr.io -u USERNAME
# password is a API TOKEN

docker buildx create --name crossbuilder --use --bootstrap

docker buildx build --push \
--platform linux/amd64,linux/arm64 \
--tag ghcr.io/oglimmer/docker-push-example .

```
