---
layout: post
title: Turing Machine Simulator
categories: [project]
---

> Copyright 2014, Kun Wang (nju.wangkun@gmail.com).  
> Department of Computer Science & Technology, Nanjing University, China.

## Introduction
This is a Turing machine simulator based on a nice Java Turing machine simulator from http://introcs.cs.princeton.edu/java/74turing/. You can find the project in [GitHub](https://github.com/kun-wang/turing-machine-simulator). Feel free to fork, modify it
.
The syntax of Turing machine is totally from the book of
"*Introduction to Models of Computation*" by professor Fangmin Song, which you can buy from [Amazon](http://www.amazon.cn/%E8%AE%A1%E7%AE%97%E6%9C%BA%E7%A7%91%E5%AD%A6%E4%B8%8E%E6%8A%80%E6%9C%AF%E7%A0%94%E7%A9%B6%E7%94%9F%E7%B3%BB%E5%88%97%E6%95%99%E6%9D%90-%E8%AE%A1%E7%AE%97%E6%A8%A1%E5%9E%8B%E5%AF%BC%E5%BC%95-%E5%AE%8B%E6%96%B9%E6%95%8F/dp/B008N6TA4U/ref=sr_1_1?ie=UTF8&qid=1421406550&sr=8-1&keywords=%E8%AE%A1%E7%AE%97%E6%A8%A1%E5%9E%8B%E5%AF%BC%E5%BC%95).

## Description

`bin`  
Contains the compiled .class files. The "images" sub-directory is very important as it stores the required images for the simulator. In the next update, I will try to move it out of the "bin" directory.

`files`  
Contains the program description for specific operations. Examples include:

+ **Adder.tur**: a program for adding two non-negative integers.
+ **copyString.tur**: a program for copy a string of *11...11*s.

In these two files, I gave a detail description of the requirements for writing a program that can be accepted by the simulator.

`src`  
Source files of the simulator.

*All of the above three directories are required for running the simulator.*

`introduction.pptx`  
Actually, the Turing machine simuator is a project for the third assignment of the course **Software Architecture**. `introduction.pptx` is my presentation on the course, which introduces basic ideas of the project, and the design patterns that have been applied.

`TMSimulator.7z`  
The packed runnable jar, with necessary config files.

## How to Use

There are two different ways to setup the simulator.
### Method 1: Running the jar file
*Step1.* Download the repository.  
*Step2.* Unpack `TMSimulator.7z`.  
*Step3.* Click the `run.bat` batch file.  
**Warnning!** The `files` and `TMSimulator.jar` must be in the same directory with `run.bat`. 

### Method 2: Importing the project into eclipse
*Step1.* Download the repository.  
*Step2.* Import into eclipse.  
*Step3.* Run it!  


## Problems List

> Problem 1

**Problem Description:** When exporting the project as a runnable jar (TMSimulator.jar is exported in this way), images cannot be load, as the jar cannot find the images.  
**Current Solution:** This problem happens because the exporting system hasn't add the necessary files in `bin/images` into the jar file. There are two solutions:

1. Modify the code to add the files.
2. Add the `images` directory into the jar file manually.

Due to my laziness, I take the latter one. It deserves better solution.

> Problem 2

**Problem Description:** The input and output have been restricted into binary values, which are required by the simulator yet are not that human friendly.  
**Possible Solution:** One encode module to translate the input decimal integers into corresponding bianry values, then feeding them into the simulator. One decode module to translate the output bianry value into corresponding decimal integer, then displaying out.

## More on the Simulator

If you have any ideas on the project, please feel free to let me know. You can try following ways to keep us in touch.

1. Comment on this post. This is highly recommended.
2. Fork the project, and push the new version to me.
3. Email me. The email can be found [here](/research#contact).