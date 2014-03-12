---
layout: post
title:  "Hello World!"
date:   2014-03-12 15:00:00
categories: about me
---

I was a middle aged suit. Two years ago I decided to [get technical](http://www.slideshare.net/matthewnewell/ruby-newbie-26183481). 

I am going use this site to document my learning. If anyone finds my site useful or amusing, great. But for now, I am blogging for future me.

Jeckyll, GitHub Pages, and Markdown
-----------------------------------
This site is built with [Jekyll][jekyll] and hosted on [GitHub](http://www.github.com). Jekyll uses [Markdown](http://daringfireball.net/projects/markdown/), a text to HTML conversion tool for web writers. 

To start Jekyll on the localhost, "jeckyll serve".

Markdown Basics
--------------
> "===" under a line of text renders HTML "H1"
>
> "---" under a line of test renders HTML "H2"
>
> ">" makes block quotes. This list so far is block quotes.
>
+ "+", "*", and "-" make unordered lists. They are interchangable.

1. "1." makes an ordered list
2. Here is ordered list "2."
3. The syntax to make a link is  "[name of link]" immediately folled by "(https://url.com)".
4. The tag to highlight a `folder` is "`".
5. A horizontal rule is "----" on a single line.
6. Emphasis is done with *one* or **two** asteriks.

-------------
 


Ruby Learning
-------------
Ruby focus right now is on Procs and Lambdas. I dont know how I would use them in production code just yet. But they seem really important. I'm learning from this module of [RubyMonk.com](https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/18-blocks/lessons/64-blocks-procs-lambdas).

{% highlight ruby %}
family= ["Matt", "Dana", "Lucy", "Bode"]

def meet_us(fam)
	puts "Meet our family of #{fam.length}."
	yield
end

meet_us(family) {family.each {|f| puts f}}
{% endhighlight %}

More soon. So much to learn.
