---
layout: post
title: arXiv Manager
categories: [project]
---

> Copyright 2014, Kun Wang, http://www.quantumman.me/.  
> Department of Computer Science & Technology, Nanjing University, China.  
> Distributed under the protect of GNU GPLv3.

## Introduction
This program `arXiv manager` enables you to extract and filter interesting papers from the website arXiv. The [arXiv](http://www.arxiv.org/) (pronounced "archive", as if the "X" were the Greek letter *Chi*) is a repository of electronic preprints, known as e-prints, of scientific papers in the fields of mathematics, physics, astronomy, computer science, quantitative biology, statistics, and quantitative finance, which can be accessed online. In many fields of mathematics and physics, almost all scientific papers are self-archived on the arXiv. Begun on August 14, 1991, arXiv.org passed the half-million article milestone on October 3, 2008, and hit a million by the end of 2014. For more details, see [introduction to arXiv](https://en.wikipedia.org/wiki/ArXiv). You can find the project in [GitHub](https://github.com/nju-cs-quark/arxiv-manager). Feel free to fork, modify, and use it.

## Brief Description
The program is highly structured, divided into two relatively independent parts: extractor and filter, with some supplementary classes.

`src\...\main`  
Entry of the program, parse the user's commands and dispatch the task to different workers (here the workers are the extractor and the filter). In order to parse the commands efficiently, I used the powerful command line options parser [The Apache Commons CLI library](https://commons.apache.org/proper/commons-cli/).

`src\...\extractor`  
The extractor extracts user-interested papers from the arXiv. By giving different commands, the extractor will extract the papers by year, by month or by new submissions. *By year* command is to extract all papers published in the aimed subject of the given year. *By month* command is to extract all papers published in the aimed subject of the given month. *By new submissions* command is to extract all papers published in the aimed subject of the latest day. there is a very nice usage on the *By new submissions* command. You can setup a auto-run task in your system that extracts new submissions each day and deliver these papers to you. In this way, you can catch up with the researches advanced all around the world.

`src\...\filter`  
There are still too many unrelated papers after you extracted by subjects. For these extracted papers, throw them through the filter, the filter will filter these papers by pre-deinfed keywords. There are three kinds of keywords list:

1. **abstract keywords list** if a paper's abstract contains any of keywords defined in the list, then this paper will be chosen as user-interested papers.
2. **author keywords list** if a paper's authors contain any of keywords defined in the list, then this paper will be chosen as user-interested papers.
3. **title keywords list** if a paper's title contains any of keywords defined in the list, then this paper will be chosen as user-interested papers.

As there are papers which contain keywords from different lists, we must do not mark them more than once.

`src\...\paper`  
In this package, we define a *Paper* class which represents the structure of a paper extracted from the arXiv. An instance of Paper is corresponded to a paper published in arXiv. Class *PaperIO* is important due to its functionality of writing to and reading from files. All disk operations are restricted in this class.

`arxiv-config.txt`  
arXiv manager's configuration file, the program reads and writes some required information from the file. Currently, two keywords are defined:

1. **ARXIV MIRROR SITE** specifies the arXiv website's mirror sites. The default mirror site is `http://arxiv.org`. For more mirror sites on arXiv, please Google it with keywords "arXiv mirror site".
2. **ARXIV SUBJECT** specifies the subject that you are interested in. The default subject is "quant-ph", which is "quantum physics". More subjects on arXiv can be found in arbitrary arXiv mirror site.
3. **ARXIV STORAGE DIRECTORY** specifies the directory where all extracted papers are stored.

These three domains must be set before the program is running.

`arxiv-manager.jar`  
The packed runnable jar, with necessary configuration files.

## How to Use

This is a quick help ducment offered by the program.
![help document]({{ site.url }}/images/posts/post-arxiv-manager-1.png)
The quick help is quite enough for the user to understand how to play with the program, here I only give some typical usage.  
Before running the program, the configuration file (arxiv-config.txt) must be set properly, especially the **ARXIV STORAGE DIRECTORY** option. This option lets the program know where to store these extracted papers. For example, I set this option to be "D:/workspaces/arxiv/", and it looks like this:
![help document]({{ site.url }}/images/posts/post-arxiv-manager-2.png)
where directory `keywords` are used to store keywords list:
![help document]({{ site.url }}/images/posts/post-arxiv-manager-3.png)
directory `new-submissions` are used to store extracted new submission papers, 
and directory `archive-contents` are used to store extracted archive papers (by -m and -y commands).

### Keywords list
There are three keywords lists here: abstract-keywords.txt, author-keywords.txt and title-keywords.txt. For each keyword you defined in the file, the manager will filter each paper's corresponding part (abstract, authors and title) by this keyword. One line for one keyword. It should be remembered that the keywords defined in a particular file will only filter the corresponding paper's information part. Here is my abstract-keywords.txt file as an exmaple.
![help document]({{ site.url }}/images/posts/post-arxiv-manager-4.png)

### Typical scenarios
The following are some typical scenarios of using the manager.

> java -jar arxiv-manager.jar -h

Run the manager with the help (`-h`) command, so that you can have a detailed explanation on all commands.

> java -jar arxiv-manager.jar -e -n

Run the manager with extraction (`-e`) and new submission (`-n`) commands, so that you can extract the new submissions from arXiv, the extracted papers will store in the local disk directory which you specified in the config.txt file.

> java -jar arxiv-manager.jar -e -m 0304 -f

Run the manager with extraction (`-e`), month(`-m 0304`) and filter (`-f`) commands, so that you can extract all papers submitted in month 04/2003 from arXiv, and filter them with keywords defined in the keywords list. The extracted papers will store in the local disk directory which you specified in the config.txt file.

> java -jar arxiv-manager.jar -f "D:\workspaces\arxiv\new-submissions\20150827-papers.txt, D:\workspaces\arxiv\new-submissions\20150828-papers.txt"

Run the manager with filter (`-f`) command, so that you can filter the given files. Files must be given with absolute path, and each file is seperated by a comma. File "20150827-papers.txt" and "20150828-papers.txt" is pre-generated by the manager with -e commands.

### How do I make use of the manager

I setup a task scheduler in my Windows system, which will run the scrpit given below everyday in 10:00. In this way, I can read my interested latest submission of papers on quant-ph subject everyday.
![help document]({{ site.url }}/images/posts/post-arxiv-manager-5.png)
A glimpse of filtered papers.
![help document]({{ site.url }}/images/posts/post-arxiv-manager-6.png)
## Problems List

> Problem 1

**Problem Description:** The program has too many parameters, which makes the command line too lon to type in. And also, the relationship between these parameters are not clear, some of them are independent, while some of them are parentchild relationship.  
**Possible Solution:**  I wanna try to make the manager as a parser, when running the manager, it will parse the commands in its own running environment, which is the same as the Python parser.

## More on the arXiv manager

If you have any ideas on the program, please feel free to have me announced. You can try following ways to keep us in touch.

1. Comment on this post. This is highly recommended.
2. Fork the project, and push the modifications to me.
3. Email me. The email can be found [here](/research#contact).