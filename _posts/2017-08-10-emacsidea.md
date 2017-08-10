---
layout: post
title: emacsideas
categories: [java]
---


emacsIDEAs
==========

Porting some great extensions of emacs to Intellij IDEA. 
Such as AceJump, CopyWithoutSelection, 
And new created EditWithoutSelection (Cut/Move/Replace without selection). 

plugin page: http://plugins.jetbrains.com/plugin/?idea_ce&pluginId=7163


---

![usage sample](https://plugins.jetbrains.com/files/7163/screenshot_16138.png)


---
```
AceJump

C-L 't' 'm' : Basic Word Jump | Type C-L, then type target char (eg. 't') to jump to, then type marker char (eg. 'm') to move caret.
C-J 't' 'm' : Basic Char Jump
```
![basic word jump gif](https://github.com/whunmr/emacsIDEAs/blob/master/tutorials/1_basic_word_jump.gif?raw=true)


```
AceJump, jump to special place

C-L ' ' 'm' : Jump to line end or start. | To show marker on line end and line start, type space ' ' as target char
C-L ',' 'm' : Jump to symbol key | Show markers on .{}(|`/\;.{}()[]?_=-+'"!@#$%^&*)_=
```

---
```
Copy without selection:

C-c w : Copy word
C-c s : Copy string, begin and end by whitespaces
C-c l : Copy line
C-c b : Copy block between balanced { and }
C-c q : Copy quoted, such as abcd in "abcd"
C-c a : Copy to line beginning
C-c A : Copy to file beginning
C-c e : Copy to line end
C-c E : Copy to file end
C-c p : Copy paragraph
C-c g : Copy paragraph group (e.g.: entire function including white lines)
C-c u : Copy to paragraph begining
C-c d : Copy to paragraph end