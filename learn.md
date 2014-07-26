---
layout: general
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

Check out the podcast: [Ruby Rogues Episode 131 "How to Learn"](rubyrogues.com/131-rr-how-to-learn) 

###Listen to smart people

1. Go to [meetups](www.meetup.com)
2. Follow smart people on twitter
  You might want to try [@kytrinyx](https://twitter.com/kytrinyx) and [@sandimetz](https://twitter.com/sandimetz)
3. Follow some smart people on github and read their blogs and fork their repositories.  I am a fan of [Matt Swanson](http://www.mdswanson.com/). My site is based on his template [Lagom](https://github.com/swanson/lagom).
4. Subscribe to some podcasts like [Ruby Rogues](www.rubyrogues.com)

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
Even if its bad. And it will be. Fork and contribute to repositories.
[code here](https://github.com/matthewnewell)

###ship code
Use git and github and discover the miracle that is heroku.
[experiments](#)

###teach others
Helping others to learn is one of the best ways to learn an new competency. Blog about a new move, help a newbie, or teach a class. Its kind of like [rubber ducking](http://en.wikipedia.org/wiki/Rubber_duck_debugging) except with humans.

__Example: Here's how to pass a block of code through a method__
Learn more about this at [RubyMonk.com](https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/18-blocks/lessons/64-blocks-procs-lambdas).
{% highlight ruby %}
family= ["Matt", "Dana", "Lucy", "Bode"]

def meet_us(fam)
  puts "Meet our family of #{fam.length}."
  yield
end

meet_us(family) {family.each {|f| puts f}}
{% endhighlight %}





