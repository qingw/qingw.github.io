#!/bin/bash
docker run --rm -it -p 4000:4000 -v $PWD:/src jguyomard/jekyll-builder jekyll serve
