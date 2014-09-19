---
layout: post
title: How to Learn
categories:
- blog
---

# 

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

###Pick a Development Track
{% highlight ruby %}
learn[0] # => Pick a development track
{% endhighlight%}

  My areas of interest are Ruby, Rails, Git/Hub, Heroku & AWS, Markdown, JavaScript, and UNIX based development and production environments.

###Learn How to Learn
{% highlight ruby %}
learn[1] # => Learn how to Learn
{% endhighlight%}

The podcast [Ruby Rogues Episode 131 "How to Learn"](rubyrogues.com/131-rr-how-to-learn) is amazing. Its worth a listen even if you are not into Ruby.

###Listen to Smart People
{% highlight ruby %}
learn[2] # => Listen to smart people
{% endhighlight%}

* Go to [meetups](www.meetup.com)
* Follow smart people on Twitter. 
  You might want to try [@kytrinyx](https://twitter.com/kytrinyx) and [@sandimetz](https://twitter.com/sandimetz)
* Follow smart people on GitHub and read their blogs and fork their repositories.  I am a fan of [Matt Swanson](http://www.mdswanson.com/). My site is based on his template [Lagom](https://github.com/swanson/lagom).
* Subscribe to some podcasts. I like [Ruby Rogues](www.rubyrogues.com).

###Use Interactive Resources
{% highlight ruby %}
learn[3] # => Use interactive resources
{% endhighlight%}

My two favorite flavors are __Browser Based Learning__ and __Test Driven Development Learning__. 

* __Browser Based Learning__ requires no client configuration. (Client configuration is every newbies kryptonite).

* __TDD Learning__ secretly teaches you how to write tests while you are learning a new software concept.

**Browser Based Learning Picks**

* Ruby Monk

* Code Academy

* Tutsplus

* Thoutbot?

**TDD Learning**

* exercism.io


###Read Books _and_ Online Media
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
Read good code. [Start here](http://ruby-doc.org/)

###Write Code
{% highlight ruby %}
learn[6] # => Write code
{% endhighlight%}

Write lots of code. Even if its bad. Especially when its bad. Fork and contribute to repositories. [Like mine](https://github.com/matthewnewell).

###Ship Code
{% highlight ruby %}
learn[7] # => Ship code
{% endhighlight%}

Writing code is fun but seeing it come alive on the cloud is a blast. The barrier to entry is low and the upside endless. I deploy to Amazon Web Service by way of Heroku.

###Teach
{% highlight ruby %}
learn[8] # => Teach
{% endhighlight%}
Helping others to learn is one of the best ways to learn an new competency. Blog about a new move, help a newbie, or teach a class. Its kind of like [rubber ducking](http://en.wikipedia.org/wiki/Rubber_duck_debugging) except with humans.

__Example__

##Here's how to pass a block of code through a method

Learn more about this at [RubyMonk.com](https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/18-blocks/lessons/64-blocks-procs-lambdas).

{% highlight ruby %}
family= ["Matt", "Dana", "Lucy", "Bode"]

def meet_us(fam)
  puts "Meet our family of #{fam.length}."
  yield
end

meet_us(family) {family.each {|f| puts f}}
{% endhighlight %}

