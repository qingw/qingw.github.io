---
layout: post
title: English
categories: [life]
---

## emacs with xwidget under osx

    git clone https://github.com/veshboo/emacs.git
    brew install texinfo
    brew install gnutls
    export PATH=/usr/local/opt/texinfo/bin:$PATH
    export LDFLAGS=-L/usr/local/opt/texinfo/lib
    cd emacs
    ./autogen.sh
    ./configure --prefix=$HOME/works/emacs-devel --with-xwidgets
    make install
