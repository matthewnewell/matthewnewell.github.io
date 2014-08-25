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

##Pick a Development Track
{% highlight ruby %}
learn[0] # => Pick a development track
{% endhighlight%}

  My areas of interest are ruby, rails, github, heroku, markdown, and javascript. And UNIX based development and production environments.

##Learn How to Learn
{% highlight ruby %}
learn[1] # => Learn how to Learn
{% endhighlight%}

The podcast [Ruby Rogues Episode 131 "How to Learn"](rubyrogues.com/131-rr-how-to-learn) is amazing. Its worth a listen even if you are not into ruby.

##Listen to Smart People
{% highlight ruby %}
learn[2] # => Listen to smart people
{% endhighlight%}

* Go to [meetups](www.meetup.com)
* Follow smart people on twitter. 
  You might want to try [@kytrinyx](https://twitter.com/kytrinyx) and [@sandimetz](https://twitter.com/sandimetz)
* Follow smart people on github and read their blogs and fork their repositories.  I am a fan of [Matt Swanson](http://www.mdswanson.com/). My site is based on his template [Lagom](https://github.com/swanson/lagom).
* Subscribe to some podcasts. I like [Ruby Rogues](www.rubyrogues.com).

##Use Interactive Resources
{% highlight ruby %}
learn[3] # => Use interactive resources
{% endhighlight%}

My two favorite flavors are browser based learning and Test Driven Development Style. 

TDD format is awesome because you are learning how to write tests while at the same time learning a new concept.

**Browser Based**
Ruby Monk
Code Academy
Tutsplus
Thoutbot?

**TDD Style**

* exercism.io

##Read Books _and_ Online Media
{% highlight ruby %}
learn[4] # => Read books
{% endhighlight%}

Subscribe to Rails Weekly newsletter

**Cookbooks**
[Michael Hartl, Learn Rails](http://www.railstutorial.org/)

**D3.Js**
[D3 wiki](https://github.com/mbostock/d3/wiki)
[Scott Murray's D3 Book](http://alignedleft.com/tutorials/d3)

**Git
[Pro Git](git-scm.com/book)  

[Git browser tutorial]**(https://try.github.io)

**Videos**
* Railscasts
* Watch the free Tutsplus tutorial on Sublime


###Read Code
{% highlight ruby %}
learn[5] # => Read code
{% endhighlight%}
Read good code. Start here
**Ruby Docs**

##Write Code
{% highlight ruby %}
learn[6] # => Write code
{% endhighlight%}

Write lots of code. Even if its bad. Especially when its bad.  Fork and contribute to repositories. [Like mine](https://github.com/matthewnewell).

##Ship Code
{% highlight ruby %}
learn[7] # => Ship code
{% endhighlight%}

Writing code is fun but seeing it come alive on the heroku is a blast. The barrier to entry is low and the upside endless.

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





