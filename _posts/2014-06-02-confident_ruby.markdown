---
layout: post
title:  "Confident Ruby"
date:   2014-06-02 15:00:00
categories: notes books
---

##Notes from [Confident Ruby](http://www.confidentruby.com/?utm_source=devblog&utm_medium=foobar&utm_campaign=32patterns), by Advi Grimm

#Introduction

##The Four Parts of a Method
1. Collecting input
2. Performing work
3. Delivering output
4. Handling failures

####The defining characteristic of "un-confident" or "timid" code is the haphazard mixing of the parts of a method.
###Methods that tell a good story lump these four parts together in distinct "stripes" and in the order listed above.

*This book is a patterns catalog

#Performing Work (part 2 goes first)

*Sending a strong message
**The foundation of an object oriented system is the message**



{% highlight ruby %}
	a = "I like cats and cats are not dogs"
	b = Hash.new(0)

	def count_to_hash(hash)
		hash.each_char {|x| b[x] += 1}
	end

	b.count
	b.first
	b.max_by {|k,v| v}
{% endhighlight %}