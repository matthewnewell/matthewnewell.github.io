---
layout: post
title:  "Jim Weirlich Videos"
date:   2014-03-16 15:00:00
categories: code, video
---

My [Ruby Meetup](http://www.meetup.com/indyrb/) dedicated this month to Jim Weirlich. I couldn't make the session, but watched a few of his videos at home. Here is what I learned:

Jim Weirlich:The Building Blocks of Modularity
---------------------------------------------

**Connascence** is a software quality metric invented by Meilir Page-Jones to allow reasoning about the complexity caused by dependency relationships in object oriented design much like coupling did for structured design.

**The Rule of Locality**: within a method, there is strong connascence. As the distance between software elements increases, there is weaker connascense.

**Connascence of Position:**  This occurs when the element in a data structure (for example, a hash) necessitates change elsewhere.

Degree matters:  CoN < CoP   (CoP is worse)
--------------

**Rule of Degree:** The goal is to refactor your code from a high deg of Connascence to low deg of Connascence.

**Connascence of Meaning (CoM)**  ex. numerical values mean something. Its better to put variables in a named constant.  (convert CoM to CoN).

**Connascence of Algrothm**  (DRY principal)
  

Jim Weirlich: SOLID Ruby
------------------------

1. single responsibility principle
2. open/closed principle
3. liskov substitution principle
4. interface segregation principle
5. dependency inversion principle

[Uncle Bob says](http://butunclebob.com/ArticleS.UncleBob.PrinciplesOfOod)

manage your dependences