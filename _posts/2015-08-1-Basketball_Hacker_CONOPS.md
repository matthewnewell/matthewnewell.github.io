---
layout: post
title: The Basketball Hacker
categories:
- blog
---

The objective of Basketball Hacker is to teach kids how to write software through a series of basketball themed programming exercises.  

As the student athlete completes course modules, he/she earns credits that can be used to buy team apparel, basketballs, subsidized team dues, and private instruction sessions (for software or basketball). 

The program runs alongside an entire youth basketball season. Classes are optional for team participants and begin about 45 minutes prior to basketball practice at a classroom near the gym.  Participation cap for the initial class should be one team or up to 10 students. For any given class, a 5 to 1 student/teacher ratio is ideal. 

Participating students are given a small laminated card with basic computer programming commands and a laptop. The laminated card is designed to fit into a gym bag. Laptops are to remain in the classroom or with the course instructor.

I envision the engineering environment to consist of Apple laptop computers plus Apple’s built in terminal shell (for running software), Apple's default instance of the ruby programming language, and a free text editor for writing software. This is my personal preference for an engineering environment. We can adjust based on instructor experience and available resources.

Basketball Hacker is not currently affiliated with any organization. All program materials will be released as open source. However, sponsorship will be necessary help offset the cost of student incentives and hardware assets.

#Course Outline

## Weeks 1 & 2
Students are introduced to their development environment. We will learn what a computer program is, how to write a computer program, and how to run a computer program.  

{% highlight ruby %}

team_name = "Pacers"
puts "Hello #{team_name}!"  #=> "Hello Pacers!"

{% endhighlight %}

## Weeks 3 & 4
Introduction to data types (string, integer, floating point, and boolean), data containers (array, hash), and conditional evaluations (if/then statements)

{% highlight ruby %}

team_members = ["Anthony", "Bode", "Lucas", "Simon", "Damon"]

team_members.each do |player_name| 
  puts "Please welcome #{player_name}!"}
end

#=> Please welcome Anthony! 
#=> Please welcome Bode!
#=> Please welcome Lucas!
#=> Please welcome Simon!
#=> Please welcome Damon!

{% endhighlight %}


## Weeks 5 & 6
Introduction to objects. Students will make a player object that holds player statistics.  Students will make a team object that hold players.

{% highlight ruby %}

class Player
  def initialize(name, position, height)
    @name = name
    @position = position
    @height = height
  end

  def introduce_player
    "At #{@height}, playing #{@position}, please welcome #{@name}!"
  end
end

{% endhighlight %}

## Weeks 6 & 8
Introduction to Test Driven Development. Students learn how to write and test their code through a [series of exercises](https://github.com/matthewnewell/basketball_hacker). 


## Month 2
Introduction to online learning resources, configuration management via git, and a continuation of test driven development exercises. 

## Month 3
Introduction to Ruby on Rails. Students will build a team website. We will deploy the website to a cloud service and store source code on [GitHub](https://github.com). Deployed work will be accessible outside of the classroom environment.    



