---
layout: post
title: docker jekyll
categories: [jekyll]
---

# github pages jekyll

## jekyll build with docker

```
docker run --rm -it -v $PWD:/src jguyomard/jekyll-builder jekyll build
``

## jekyll serve with docker


```
docker run --rm -it -p 4000:4000 -v $PWD:/src jguyomard/jekyll-builder jekyll serve

```
