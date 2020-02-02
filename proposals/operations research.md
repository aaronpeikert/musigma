---
title: (1) Model building in mathematical programming
author: Williams
year: 2013
format: book
abstract: |
  An introductory textbook, the title pretty much says it. How to translate real-world problems into mathematical optimization problems. Very hands-on with many examples.
link: https://www.wiley.com/en-us/Model+Building+in+Mathematical+Programming%2C+5th+Edition-p-9781118443330
time: 30-40min per session
---
title: (2) Julia Programming for Operations Research 2/e
author: Changhyun Kwon
year:
format: book
abstract: |
  A short book on how models are specified in JuMP.
link: https://www.chkwon.net/julia/
time: We will go through this together.
---
title: (3) Algorithms for optimization
author: Kochenderfer, M. J., & Wheeler, T. A. 
year: 2019
format: book
abstract: |
  How to implement algorithms for optimization problems in Julia.
link: https://mitpress.mit.edu/books/algorithms-optimization
time: (optional) about 30-40 min per session
---


I propose to have a look at the topic "operations research", which is the science of translating decision problems into mathematical problems with the goal of finding a (near) optimal solution. The reason why I would like to propose this topic is, that I have an understanding of both classical statistics and machine learning, but this seems to me like the 3rd culture in mathematical modeling of real world problems. And I assume that you guys too have (almost) no experience in it. I think we would benefit from doing it hands-on, with many examples we solve together. Therefore, the structure of the meetings in general would be 

1.	Read an introductory text at home
2.	Talk at the beginning of the meeting shortly about its content and try to find answers to the questions or missunderstandings we had
3.	Solve together one or more example problems

# Reading material
1.	Book (1) would be our main source to get a basic understanding about the topic.
2.	/
3.	Examples can be drawn from (1), since there are plenty. Other sources, if necessary, will be provided. For implementation, we will refer to book (2), see below.

# Software
I propose to use JuMP, a "domain-specific modeling language for mathematical optimization embedded in Julia" https://github.com/JuliaOpt/JuMP.jl.
To learn how to use JuMP, we can refer to book (2). 

# Supplementary reading material
Book (3) is about how to implement algorithms for optimization problems in Julia. However, this is not necessary to understand JuMP, which is a higher-level interface - so I think we should only talk about it if there is a huge interest in it and we have enough time. But it covers really cool topics, for example how to implement automatic differentiation.


# Sessions
I propose a four sessions structure. At the end of session 2, we should plan to have a discussion about how to move on with the topic.
If I marked a point with an X, I will propose more detailed reading material should we choose to commit to the topic.


## Session 1
*get the software to work, have a look at Julia and JuMP and learn what operations research is*

### Preparation
-	Install Julia, Juno and JuMP. This is really easy, and should someone have problems, contact me in advance, I will try to help. X
-	Fit an easy Model in JuMP to see if everything works. X
-	Have a look an the basics of the Julia language (if else conditions, matrix operations, loops, functions, etc.) X
-	Read Chapters one and two of Williams (17 pages).

### Metting
-	Check the installations and solve software problems (However, everyone is expected to install this stuff at home. I think this point is only relevant if someone has HUGE problems)
-	I give a little presentation (5 minutes) about my mental model of the following meetings
-	We discuss the chapter and your thoughts about the topic (maybe something special you are interested in), so we can adjust the timeline if needed

## Session 2
*Linear Programming*

### Preparation
-	Read Chapter three of Williams (22 pages)

### Metting
-	Discuss the chapter
-	Do some exercises together X
-	Talk about the topics of the next meetings

## Sessions 3 and 4
*For the next sessions, 3 and 4, there are many topics we could look at, now that we have a basic understanding about how optimization research and JuMP works. I think we should put them up for vote after Session 2.*

-	Decomposing large linear models
-	Validating and Interpreting linear models
-	Nonlinear Models
-	Integer Models

