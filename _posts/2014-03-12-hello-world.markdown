---
layout: post
title:  "Hello World!"
date:   2014-03-12 15:00:00
categories: about me
---

[Get technical](http://www.slideshare.net/matthewnewell/ruby-newbie-26183481). 

I use this site to document my learning. If **you** find my site useful or amusing, great. But for now, I am blogging for **future me**.

There are much more useful blogs and much better written blogs. Here are some of that I like:
[Matt Swanson](http://www.mdswanson.com/)



Jeckyll, GitHub Pages, and Markdown
-----------------------------------
This site is built with [Jekyll](http://jekyllrb.com/) and lives on [GitHub](http://www.github.com). Jekyll uses [Markdown](http://daringfireball.net/projects/markdown/), a text to HTML conversion tool for web writers. 

To start Jekyll on the localhost, "jekyll serve".

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
7. Image tags are like this: **5th Grade Basketball**
!"[]"({{ site.url }}/images/b1.jpg)

-------------

Ruby Learning
-------------
Ruby focus right now is on Procs and Lambdas. I'm learning from this module of [RubyMonk.com](https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/18-blocks/lessons/64-blocks-procs-lambdas). Here is about where I am right now:

{% highlight ruby %}
family= ["Matt", "Dana", "Lucy", "Bode"]

def meet_us(fam)
	puts "Meet our family of #{fam.length}."
	yield
end

meet_us(family) {family.each {|f| puts f}}
{% endhighlight %}

More soon. So much to learn.
