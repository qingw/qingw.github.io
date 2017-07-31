---
layout: post
title: quick sort
categories: [math]
---

## quick sort

```
-- QuickSort
quick_sort [] = []
quick_sort (x:[]) = [x]
quick_sort (x:xs) =
    let smaller_or_equal_list = [a| a<-xs, a<=x]
        larger_list = [a| a<-xs, a>x]
    in quick_sort smaller_or_equal_list ++ [x] ++ quick_sort larger_list
```
