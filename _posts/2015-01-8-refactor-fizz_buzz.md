---
layout: post
title: Refactoring Fizz Buzz
categories:
- blog
---

The objective of this exercise is to explore programming concepts from [Ruby Steps](https://rubysteps.com/), lectures 1 to 10. 

##Fizz Buzz Requirements

For the numbers from 1 to 100:

* If the number is a multiple of 3, print fuzz
* If the number is a multiple of 5, print buzz
* If the number is a multiple of 3 and 5, print fizz buzz
* Otherwise, print the number


## [fizz-buzz-001](https://github.com/matthewnewell/fizzbuzz/tree/fizz-buzz-001)

* solve fizz buzz
* git tag

{% highlight ruby %}

(1..100).each do |i| 
  if i%3 == 0 && i%5 == 0 
    puts "fizz buzz"
  elsif i%3 == 0 
    puts "fizz"
  elsif i%5 == 0 
    puts "buzz"
  else 
    puts i
  end
end

git add --all
git commit -m "original commit"
git tag fizz-buzz-001
git push origin fizz-buzz-001

{% endhighlight %}


## [fizz-buzz-002](https://github.com/matthewnewell/fizzbuzz/tree/fizz-buzz-002)

* Write some tests with rspec
* Create a FizzBuzz class
* Create a method that maintains an instance variable of the same name

## The Class

{% highlight ruby %}

class FizzBuzz
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def result
    @result ||= []
  end

  def fizz_check(num)
    if num % 3 == 0 && num % 5 != 0
     result << "fizz"
    end
  end

  def buzz_check(num)
    if num % 5 == 0 && num % 3 != 0
     result << "buzz"
    end
  end

  def fizz_buzz_check(num)
    if num % 3 == 0 && num % 5 == 0
      result << "fizz-buzz"
    end
  end

  def evaluate
    (@num1..@num2).each do |i|
      result << i unless fizz_check(i) ||  buzz_check(i) || fizz_buzz_check(i)
    end
  end
end

{% endhighlight %}

## The Library

{% highlight ruby %}

require './lib/fb.rb'

describe "Fizz Buzz" do
  let(:fb) { FizzBuzz.new(1,15) }

  it "returns fizz if number is divisible by 3 and not 5" do
    expect(fb.fizz_check(3)).to eq ["fizz"]
  end

  it "returns buzz if number is divisible by 5 and not 3" do
    expect(fb.buzz_check(5)).to eq ["buzz"]
  end

  it "returns fizz-buzz if number is divisible by 3 and 5" do
    expect(fb.fizz_buzz_check(15)).to eq ["fizz-buzz"]
  end

  it "FB runs the program fizz buzz against a range" do
    fb.evaluate
    expect(fb.result).to eq [1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizz-buzz"]
  end
end

{% endhighlight %}

## [fizz-buzz-003](https://github.com/matthewnewell/fizzbuzz/tree/fizz-buzz-003)

* Refactor to evaluate fizz buzz with blocks
* Write a method that contains a hash with a proc value [:evaluation] and a string value [:return_result]
* Refactor tests to evaluate method-hash-proc-string structure

## Class Refactor

{% highlight ruby %}

def evaluate
  (@num1..@num2).each do |i|

    result << fizz_evaluator[:return_message] if fizz_evaluator[:condition].call(i)
    result << buzz_evaluator[:return_message] if buzz_evaluator[:condition].call(i)
    result << fizz_buzz_evaluator[:return_message] if fizz_buzz_evaluator[:condition].call(i)
    result << i if integer_evaluator[:condition].call(i)
  end
end

def fizz_evaluator
  {
    condition: ->(i){ i % 3 == 0 && i % 5 != 0 },
    return_message: "fizz"
  }
end

def buzz_evaluator
  {
    condition: ->(i){ i % 5 == 0 && i % 3 != 0 },
    return_message: "buzz"
  }
end

def fizz_buzz_evaluator
  {
    condition: ->(i){ i % 3 == 0 && i % 5 == 0 },
    return_message: "fizz-buzz"
  }
end

def integer_evaluator
  {
    condition: ->(i){ i % 3 != 0 && i % 5 != 0},
    return_message: nil
  }
end

{% endhighlight %}

Test Refactor

{% highlight ruby %}

describe "Fizz Buzz" do
  let(:fb) { FizzBuzz.new(1,15) }

  it "FB runs the program fizz buzz against a range" do
    fb.evaluate
    expect(fb.result).to eq [1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizz-buzz"]
  end

  it "returns fizz-buzz if number is divisible by 3 and 5" do
    expect(fb.fizz_buzz_evaluator[:condition].call(15)).to eq true
    expect(fb.fizz_buzz_evaluator[:return_message]).to eq "fizz-buzz"
  end

  it "returns fizz if number is divisible by 3 and not 5" do
    expect(fb.fizz_evaluator[:condition].call(3)).to eq true
    expect(fb.fizz_evaluator[:return_message]).to eq "fizz"
  end

  it "returns buzz if number is divisible by 5 and not 3" do
    expect(fb.buzz_evaluator[:condition].call(5)).to eq true
    expect(fb.buzz_evaluator[:return_message]).to eq "buzz"
  end
end

{% endhighlight %}

## [fizz-buzz-004](https://github.com/matthewnewell/fizzbuzz/tree/fizz-buzz-004)

* DRY: call blocks with common evaluator
* No test refactor needed!

## Class Refactor

{% highlight ruby %}

class FizzBuzz
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def result
    @result ||= []
  end

  def evaluator(evaluator_name, i)
    evaluator = send("#{evaluator_name}_evaluator")

    if evaluator[:condition].call(i)
      result << evaluator[:return_message] ||= i
    end
  end

  def fizz_evaluator
    {
      condition: ->(i){ i % 3 == 0 && i % 5 != 0 },
      return_message: "fizz"
    }
  end

  def buzz_evaluator
    {
      condition: ->(i){ i % 5 == 0 && i % 3 != 0 },
      return_message: "buzz"
    }
  end

  def fizz_buzz_evaluator
    {
      condition: ->(i){ i % 3 == 0 && i % 5 == 0 },
      return_message: "fizz-buzz"
    }
  end

  def integer_evaluator
    {
      condition: ->(i){ i % 3 != 0 && i % 5 != 0}
    }
  end

  def evaluate
    evaluators = ["fizz", "buzz", "fizz_buzz", "integer"]
    
    (@num1..@num2).each do |i|
      evaluators.each do |e| 
        evaluator(e, i)
      end
    end 
  end
end

{% endhighlight %}





