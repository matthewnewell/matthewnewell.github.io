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
      practice\
    end
  end

{% endhighlight %}

###Pick a development track

My thing is ruby, rails, github, heroku, markdown and I hope soon javascript. 

###Learn how to Learn

Listen to [Ruby Rogues Episode 131](rubyrogues.com/131-rr-how-to-learn) 

###Listen to smart people

1. go to meetups
2. follow smart people on twitter
3. subscribe to Ruby Roges podcast
4. subscribe to Ruby weekly
5. use RailsCasts
6. Watch the free Tutsplus tutorial on Sublime

*I don't care to belong to any club that will have me as a member.  -Groucho Marx*

###Use interactive resources
There are two flavors: browser based learning and TDD style

Exercism.io
RubyMonk

###read books


###Read code
Read good code. Start here

###write code, ship code. 
[code here](https://github.com/matthewnewell)

###ship code
[experiments](#)

###teach others

I teach third graders because they don't know that I don't know what I'm talking about. 


Useful Learning Resources
--------------
**Javascript interactive tutorials**
1. learnprime #thoughtbot educational resource
2. rubymonks
3. codeacademy
4. tutsplus

**TDD Based Exercises**
1. exercism.io


**Cookbooks**
1. Michael Hartl

**Videos**
1. Railscasts

**Email subscriptions**

**Podcasts**

**Books**

**Ruby Docs**

**Git
[Pro Git](git-scm.com/book)  
[Git browser tutorial]**(https://try.github.io)

[Matt Swanson](http://www.mdswanson.com/)




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
