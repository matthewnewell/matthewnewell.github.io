---
layout: general
title: Learn
---

{% highlight ruby %}

  knowledgable_and_productive = false

  learn = [
    "pick a development track",
    "learn how to learn",
    "listen to smart people",
    "use interactive resources",
    "read books",
    "read code", 
    "write code", 
    "ship code",
    "teach"
  ]

  until knowledgable_and_productive
    learn[2..-1].each do |practice|
      practice
    end
  end

{% endhighlight %}

##Pick a development track
{% highlight ruby %}
learn[0] # => Pick a development track
{% endhighlight%}

  My areas of interest are ruby, rails, github, heroku, markdown, and javascript. And UNIX based development and production environments.

##Learn how to Learn
{% highlight ruby %}
learn[1] # => Learn how to Learn
{% endhighlight%}

The podcast [Ruby Rogues Episode 131 "How to Learn"](rubyrogues.com/131-rr-how-to-learn) is amazing. Its worth a listen even if you are not into ruby.

##Listen to smart people
{% highlight ruby %}
learn[2] # => Listen to smart people
{% endhighlight%}

* Go to [meetups](www.meetup.com)
* Follow smart people on twitter. 
  You might want to try [@kytrinyx](https://twitter.com/kytrinyx) and [@sandimetz](https://twitter.com/sandimetz)
* Follow some smart people on github and read their blogs and fork their repositories.  I am a fan of [Matt Swanson](http://www.mdswanson.com/). My site is based on his template [Lagom](https://github.com/swanson/lagom).
* Subscribe to some podcasts. I like [Ruby Rogues](www.rubyrogues.com).

##Use interactive resources
{% highlight ruby %}
learn[3] # => Use interactive resources
{% endhighlight%}

I know of two flavors: browser based learning and TDD style. 

Exercism.io
RubyMonk
**Javascript interactive tutorials**

1. learnprime #thoughtbot educational resource
2. rubymonks
3. codeacademy
4. tutsplus

**TDD Based Exercises**
1. exercism.io


##read books _and_ online media
{% highlight ruby %}
learn[4] # => Read books
{% endhighlight%}

Subscribe to Rails Weekly newsletter

**Cookbooks**
1. Michael Hartl

**Git
[Pro Git](git-scm.com/book)  

[Git browser tutorial]**(https://try.github.io)

**Videos**
* Railscasts
* Watch the free Tutsplus tutorial on Sublime


###Read code
{% highlight ruby %}
learn[5] # => Read code
{% endhighlight%}
Read good code. Start here
**Ruby Docs**

##write code
{% highlight ruby %}
learn[6] # => Write code
{% endhighlight%}

Even if its bad. And it will be. Fork and contribute to repositories.
[code here](https://github.com/matthewnewell)

##Ship Code
{% highlight ruby %}
learn[7] # => Ship code
{% endhighlight%}

Use git and github and heroku.
[experiments](#)

##Teach
{% highlight ruby %}
learn[8] # => Teach
{% endhighlight%}
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





