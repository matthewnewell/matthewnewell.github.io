---
layout: default
title: Learn
---

{% highlight ruby %}

  skilled = false

  learn = [
    "pick a development track",
    "learn how to learn",
    "listen to smart people",
    "use interactive resources",
    "read books",
    "read code", 
    "write code", 
    "ship code",
    "teach others"
  ]

  until skilled
    learn[2..-1].each do |practice|
      practice
    end
  end

{% endhighlight %}

###Pick a development track

My areas of interest are ruby, rails, github, heroku, markdown, and javascript. And UNIX based development and production environments.

###Learn how to Learn

Listen to [Ruby Rogues Episode 131 "How to Learn"](rubyrogues.com/131-rr-how-to-learn) 

###Listen to smart people

1. Go to meetups
2. Follow smart people on twitter
3. Follow some smart people on github
4. Subscribe to some podcasts like [Ruby Rogues](rubyrogues.com)

[Matt Swanson](http://www.mdswanson.com/)

*I don't care to belong to any club that will have me as a member.  -Groucho Marx*

###Use interactive resources
There are two flavors: browser based learning and TDD style

4. subscribe to Ruby weekly
5. use RailsCasts
6. Watch the free Tutsplus tutorial on Sublime

Exercism.io
RubyMonk
**Javascript interactive tutorials**
1. learnprime #thoughtbot educational resource
2. rubymonks
3. codeacademy
4. tutsplus

**TDD Based Exercises**
1. exercism.io


###read books _and_ online media

**Cookbooks**
1. Michael Hartl


**Git
[Pro Git](git-scm.com/book)  
[Git browser tutorial]**(https://try.github.io)




**Videos**
1. Railscasts


###Read code
Read good code. Start here
**Ruby Docs**


###write code
Even if its bad. And it will be.
[code here](https://github.com/matthewnewell)

###ship code
Use git and github, readme files, discover the miracle that is heroku.
[experiments](#)

###teach others

The open source community if full of really smart people that are passionate about teaching others. When you can, pay it forward.

As a bonus, teaching is also one of the best ways to learn. 

Best way to start is start a blog. Its kind of like [rubber ducking](http://en.wikipedia.org/wiki/Rubber_duck_debugging)

stackoverflow

Missing
Fork and contribute to repositories





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
