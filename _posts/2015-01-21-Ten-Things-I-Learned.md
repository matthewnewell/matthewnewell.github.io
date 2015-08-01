---
layout: post
title: Ten Ruby Things I Learned This Week
categories:
- blog
---

By Friday my browser is tabbed full of must know information. Time to purge.

## 1. Monkey Patch a Method and then Call it with Map via Block's Symbol

Source: [Rosetta Code](http://rosettacode.org/wiki/FizzBuzz#Ruby)

{% highlight ruby %}

# the monkeypatch

class String
  def shout
    "#{self}!!!!"
  end
end

a = "I like cats"
a.shout # => I like cats!!!

# here is the map, block, symbol part

animals = %w(cats dogs birds )
animals.map(&:shout) # => ["cats!!!", "dogs!!!", "birds!!!"]

{% endhighlight %}

## 2. Super Short Syntex for If/Else Statement

Learned while browsing [Rosetta Code](http://rosettacode.org/wiki/FizzBuzz#Ruby)

{% highlight ruby %}

# The following blocks are equilivant:

if a == b 
  puts "match"
else
  puts "no match"
end

#is the same as this one.
a == b ? "match" : "no match"

{% endhighlight %}

## 3. Array.new with an Argument and Block

Discovered at [Engine Yard](https://blog.engineyard.com/2015/five-ruby-methods-you-should-be-using?utm_source=rubyweekly&utm_medium=email)

{% highlight ruby %}

class BallGame
  def score_per_innings
    @score_per_innings ||= Array.new(9) { Array.new(2) {0} }
  end
end

mets_vs_yanks = Ballgame.new 
mets_vs_yanks.score => [ [0-0], [0-0], [0-0], [0-0], [0-0], [0-0], [0-0], [0-0], [0-0] ]

{% endhighlight %}



## 4. Spaceship Operator

Evaluates value a and b. Returns -1 when a follows b, 0 when a == b, and 1 when b follows a

{% highlight ruby %}

string = %w(b a i c n o)

# the following are equivalant
string.sort.reverse
string.sort {|a, b| b <=> a } #note b precedes a in spaceship block. to match the reverse method.

{% endhighlight %} 

## 5. Know thy Self

Stumbled upon at [jonathan-alban's fizz_buzz](github.com/jonathan-alban/fizz_buzz/blob/master/fizz_buzz.rb). Explained at [RubyLearning](rubylearning.som/satishtalim/ruby_self.html)


> At every point there is one and only one ```self``` - the current or default object accessible to you in your program.

{% highlight ruby %}

class EvalEven
  def self.find(number)
    if number % 2 == 0
      "#{number} is an even number!"
    else
      "odd number"
    end
  end
end

EvalEven.find(2)  # => 2 is an even number!

{% endhighlight %}

## 6. Blocks and Methods

You normally invoke a block by using the yield statement from a method that has the same name as that of the block. 

{% highlight ruby %}
def test
  yield
end

test { puts "hello world" }

def adder(a,b,c)
  yield a, b, c
end

test {|a,b,c| puts a+b+c}

{% endhighlight %}



## 7 An Abstraction Exercise

[Understanding some Enumerable methods by implementing them in Ruby](http://mauricio.github.io/2015/01/12/implementing-enumerable-in-ruby.html?utm_source=rubyweekly&utm_medium=email)

{% highlight ruby %}

def question
  return 

{% endhighlight %}

## 8 Common Rails Mistakes
[10 common rails mistakes: a best practice tutorial](http://www.toptal.com/ruby-on-rails/top-10-mistakes-that-rails-programmers-make)


