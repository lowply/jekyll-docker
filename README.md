# jekyll-docker

Yet another docker container for jekyll. Still WIP.

## New

```
docker run --rm -v $(pwd):/home lowply/jekyll-docker jekyll new blog
```

## Serve

```
docker run --rm -p 4000:4000 -v $(pwd):/home lowply/jekyll-docker jekyll serve -H 0.0.0.0 -P 4000
```

## Build

```
make build
```