---
layout: post
title: Refactoring Fizz Buzz
categories:
- blog
---

##The Setup
*For the numbers from 1 to 100:
*If the number is a multiple of 3, print fuzz
*If the number is a multiple of 5, print buzz
*If the number is a multiple of 3 and 5, print fizz buzz
*Otherwise, print the number

My first fizz buzz looked something like this:

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

{% endhighlight %}

Now a refactor. First step is to write a test with [rspec](https://rubygems.org/gems/rspec) for the the problem. I found that the spec and the library had to be written in parallel. 

{% highlight ruby %}

require './lib/fb.rb'

describe "Fizz Buzz" do
  let(:fb) { FizzBuzz.new(1,15) }

  it "FB runs the program fizz buzz against a range" do
    fb.evaluate
    expect(fb.result).to eq [1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizz-buzz"]
  end

  it "prints to screen the numbers defined in a range" do
    expect(fb.number_range).to eq 1..15
  end

  it "returns fizz-buzz if number is divisible by 3 and 5" do
    expect(fb.fizz_buzz_check(15)).to eq ["fizz-buzz"]
  end

  it "returns fizz if number is divisible by 3 and not 5" do
    expect(fb.fizz_check(3)).to eq ["fizz"]
  end

  it "returns buzz if number is divisible by 5 and not 3" do
    expect(fb.buzz_check(5)).to eq ["buzz"]
  end
end

{% endhighlight %}


And here is my first library that made the tests pass.

{% highlight ruby %}

class FizzBuzz
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def result
    @result ||= []
  end

  def number_range
    return (@num1..@num2)
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


Now that I have a test framework and a functioning class, I can refactor. First need to commit to github with a tag.










##The Setup

My rails application [Team FBO](teamFBO.html) has a [rake task](http://en.wikipedia.org/wiki/Rake_(software)) to purge stale database rows. A row of data shall be purged when it meets two conditions:

* Over five days old
* No team evaluation of the row has an `evaluation_code_id` greater than one

The original rake task works correctly but requires two iterations to evaluate all rows. I need it to work in one iteration.

Here is the original code in `app/lib/tasks/scrape.rake`:

{% highlight ruby %}

@opportunities.each do |opportunity| 
  if (Date.today - opportunity.post_date).to_i > 5
    if Evaluation.where(opportunity_id: opportunity.id).first
      evaluations = Evaluation.where(opportunity_id: opportunity.id)
      evaluations.each do |evaluation|
        if evaluation.evaluation_code_id == 1 #purge only if team opportunity is not evaluated
          evaluation.destroy   
        end
      end
    else  #the opportunity is not part of any team's evaluation criteria
      opportunity.destroy
    end
  end
end
   
{% endhighlight %}

## Dave's Observations

* Look at the shape of the code. Lots of indentations. 
* The code does a lot but it is difficult to understand exactly what it is doing. In ruby, a method should really only do one thing ([Single Responsibility Principle](http://www.slideshare.net/anildigital/solid-design-principles-in-ruby). 
* Recommend we extract the methods and then re-evaluate what the code is doing.

## Syntax cleanup

These two lines mean the same thing. The `evaluations.present?` is more expressive. 

{% highlight ruby %}
-  if Evaluation.where(opportunity_id: opportunity.id).first
+  if opportunity.evaluations.present?
{% endhighlight %}

BTW, the `+` and `-` are change indicators from the [git commit](https://github.com/matthewnewell/fbo-scrape/commit/dda240c533dc0664a1f5760f413f5a69b2119e4f).

## Refactor

We extracted the methods out of `.rake` and into a new file `/app/models/concerns/purge_opportunities.rb`. During the extract, Dave asked me to explain what each block of code was doing. When I was able to articulate clearly, we named the method according to my verbal description. We also used a style convention of `?` for conditional methods (return true or false) and `!` for methods that change data.

One block was eliminited in its entirity with a select statement:

{% highlight ruby %}
-  opportunities = Opportunity.all 
-  if (Date.today - opportunity.post_date).to_i > 5
+  Opportunity.where('post_date < ?', 5.days.ago)
{% endhighlight %}

Here is the refactored code in `purge_opportunities.rb`. Much more expressive and easier to understand. And test.

{% highlight ruby %}

class PurgeOpportunities

  def purge_old_and_never_evaluated!
    purge_never_evaluated!
    purge_never_evaluated_opportunities!
  end

  # private

  def old_opportunities
    Opportunity.where('post_date < ?', 5.days.ago)
  end

  def purge_never_evaluated!
    old_opportunities.each do |opportunity| 
      if has_team_evaluation?(opportunity)
        opportunity.evaluations.each do |evaluation|
          if evaluation_is_in_initial_state_of_not_evaluated?(evaluation)
            evaluation.destroy  
          end
        end
      end
    end
  end

  def purge_never_evaluated_opportunities!
    old_opportunities.each do |opportunity|
      unless has_team_evaluation?(opportunity)
        opportunity.destroy
      end
    end
  end

  def has_team_evaluation?(opportunity)
    opportunity.evaluations.present?
  end 

  def evaluation_is_in_initial_state_of_not_evaluated?(evaluation)
    evaluation.evaluation_code_id == 1 #purge only if team opportunity is not evaluated
  end

end

{% endhighlight %}

We simplified the `rake` task to create a PurgOpportunity object as follows:

{% highlight ruby %}
task :clean => :environment do  #heroku scheduler run this every 1 days
  purger = PurgeOpportunities.new 
  purger.purge_old_and_never_evaluated!
end
{% endhighlight %}

## Tests

Now that we had a properly structured object, we were able to write some tests in `/app/tests/models/purge_opportunities_test.rb`.

{% highlight ruby %}
require 'test_helper'

class PurgeOpportunitiesTest < ActiveSupport::TestCase

  test "#purge_old_and_never_evaluated" do
    old = Opportunity.create(opportunity: 'old', post_date: 6.days.ago)
    bad = Opportunity.create(opportunity: 'bad', post_date: 4.weeks.ago)
    bad.evaluations.create(evaluation_code_id: 1)
    good = Opportunity.create(opportunity: 'good', post_date: Date.today)
    good.evaluations.create(evaluation_code_id: 3)
    old_good = Opportunity.create(opportunity: 'old_good', post_date: 1.month.ago)
    old_good.evaluations.create(evaluation_code_id: 2)

    purger = PurgeOpportunities.new
    purger.purge_old_and_never_evaluated!
    all = Opportunity.all

    assert !all.include?(old), 'old is not gone :('
    assert !all.include?(bad), 'bad is not gone :('
    assert all.include?(good), 'good not here :('
    assert all.include?(old_good), 'old_good not here :('
  end

end

{% endhighlight %}

## Conclusion

Dave took three hours out of his Tuesday evening to help a casual acquaintance write better code. Indy.rb's culture of helping others get better should not surprise rubyists. But its a special thing. And its what make so ruby powerful. 

I look forward to the day when I get to help someone else get better. 




