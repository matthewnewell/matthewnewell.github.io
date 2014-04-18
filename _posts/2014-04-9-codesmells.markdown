---
layout: post
title:  "Code Smells"
date:   2014-04-9 15:00:00
categories: code tips
---
An [Indy Ruby Meetup](http://www.meetup.com/indyrb/) presentation by [Matt Swanson](http://www.mdswanson.com/)

[Sourcecode](https://github.com/swanson/code-smell-refactoring/tree/ruby/ruby) for all of the code smells.

Smell #1: Duplicate Code
------------------------

Corrective Action: Extract Method

Move the duplicate code into a private method. then call the method.
#negative arguement is the reverse of the integer (useful for subtraction method)

ruby account.rb

Smell #2: Data Clumps
---------------------

#Clump is a bunch of data that hangs together. Clumps should be their own object.

Corrective Action: Extract Class

ruby customer_spec.rb

Smell #3: Method Chains  aka Law of Demeter
-------------------------------------------
One object keeps chaining down. Too coupled. Only go one link down the chain "."

Corrective Action: High Delegate

ruby invoice_spec.rb

Resources:
Martin Fowler: Refactoring (psst. its Java)
[Sourcemaking](http://Sourcemaking.com)


