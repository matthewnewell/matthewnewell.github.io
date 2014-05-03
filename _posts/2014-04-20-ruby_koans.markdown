---
layout: post
title:  "Ruby Koans"
date:   2014-04-20 15:00:00
categories: code tips
---
What I learned from Jim Weirlich & Joe O'Brien's [Ruby Koans](http://rubykoans.com/). I tried Ruby Koans about a year ago. Restarted after hearing [Ruby Rogues](http://rubyrogues.com/) podcast [eposode 151](http://rubyrogues.com/151-rr-the-jim-weirich-tribute-episode/).

Koans secretly teaches the student test driven development while learning ruby.

# About Nil
Think about it: is it better to use "object.nil?" or "object == nil"
Both return a true value. But they are not exactly the same. The first is testing to see of object is part of the nil singleton class. The second is a comparasion. Which is better? object.nil is slightly faster, reads better, and coller because its my first application of the singleton class.

#About Objects
in_ruby_everything.is_a?(Object) #returns true
small numbers have fixed ids: 0.object_id #returns 1

#About Arrays
(1..5).class #returns Range
(1...5).to_a #returns array [1,2,3,4] #drops last value

nice array move with parallel assignments and splat operator
{% highlight ruby %}
  def test_parallel_assignments_with_splat_operator
    first_name, *last_name = ["John", "Smith", "III"]
    assert_equal "John", first_name
    assert_equal ["Smith", "III"], last_name
  end
{% endhighlight %}

#About Hashes

fetch vs []

{% highlight ruby %}

	def test_accessing_hashes_with_fetch
	    hash = { :one => "uno" }
	    assert_equal "uno", hash.fetch(:one)
	    assert_raise(KeyError) do
	      hash.fetch(:doesnt_exist)
	    end

	    # THINK ABOUT IT:
	    #
	    # Why might you want to use #fetch instead of #[] when accessing hash keys?
	    #Because #[] will not raise an error even though it is not a valid key.
	    #Maybe put in a rescue to create the key/value pair
	end

{% endhighlight %}

hash.keys.class == Array #Interesting
hash.values.class == Array #Interesting

h = Hash.new(0) #sets a default value to 0. Useful for counting.

#About Strings

{% highlight ruby %}
	
	def test_use_backslash_for_those_hard_cases
	  a = "He said, \"Don't\""
	  b = 'He said, "Don\'t"'
	end

{% endhighlight %}

#About Symbols
*Why is it not a good idea to dynamically create a lot of symbols in ruby?*

Symbols are put into memory once. They stay there until the program exists. Fast, but memory hog.

#About Regular Expressions
*basic syntax*
"a string"[/str/] #=> "str"

*Nice use of select method and regexp*
{% highlight ruby %}
	animals = ["cat", "bat", "fat"]
	match = /[bc]at/
	animals.select { |a| a[match] } #=> ["cat", "bat"]

{% endhighlight %}

1. Find digits  [/\d/]
2. Find spaces [/\s/]
3. Any character (non newline) [/.+/]
3. Any expression can be negated [^/\d/] or with capital [/\D/]



