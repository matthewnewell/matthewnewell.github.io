---
layout: post
title: Tips for Future Me
categories:
- blog
---

>If I dont use a new move every day I will probably forget it. 


Twitter Bootstrap Tipsheet
--------------------------
1. "bundle exec rake assets:precompile" precompiles your stylesheet 


D3.js Tipsheet
--------------
local host commands: 
python -m SimpleHTTPServer 8888 &
Once this is running, go to http://localhost:8888/.


Git Tipsheet
------------
1. git add --all #this will respect deleted files. better than git add .
2. git commit -m "Fixes #1. OBE been_there global with use of raise. ". This will auto close github issue tracker Number 1. Commit message must include "Fixes #1".
3. git branch branchname -d #this will delete branches that are no longer useful. do this after a successful merge to master branch.
4. git mergetool  #run this after a git merge branchname when there are merge conflicts
5. git branch -v  #view last commit for each branch
6. git branch --merged  #show which branches are merged to current branch. Merged branches can usually be deleted.
7. git branch --no-merged #have not yet been merged. Attempt to delete will fail
Git Branching Remote Branches: for multi-user collaborations with a remote origin
1. git fetch origin  #this synchronizes work between your git clone and most current merges to master on origin
Git Initial Remote Repository Setup
1. git remote add origin https://github.com/username/repository_name.git
2. git push -u origin master  "-u" remembers the parameters, nest time, just git push
3. git pull origin master  #pulls down latest.
4. git diff HEAD  #describes differenes pull vs. local
5. git diff --staged   describes how stage is new
6. git reset name.txt  #drops name.txt
7. git branch clean_up
8. git rm '*.txt'   #you can use wildcards to exclude entire filetypes from a git


Heroku Tipsheet   categories: tipsheet
---------------

1. heroku pg:reset DATABASE (on local host, rake db:drop)
2. heroku run rails console

irb(main)> ActiveRecord::Base.connection.tables.each { |t|     ActiveRecord::Base.connection.reset_pk_sequence!(t) }



Jeckyll, GitHub Pages, and Markdown
-----------------------------------
This site is built with [Jekyll](http://jekyllrb.com/) and lives on [GitHub](http://www.github.com). Jekyll uses [Markdown](http://daringfireball.net/projects/markdown/), a text to HTML conversion tool for web writers. 

To start Jekyll on the localhost, "jekyll serve". Even better, "jekyll serve --watch"

Markdown Basics
--------------
> "===" under a line of text renders HTML "H1"
>
> "---" under a line of test renders HTML "H2"
>
> ">" makes block quotes. This list so far is block quotes.
>
+ "+", "*", and "-" make unordered lists. They are interchangable.

1. "1." makes an ordered list
2. Here is ordered list "2."
3. The syntax to make a link is  "[name of link]" immediately folled by "(https://url.com)".
4. The tag to highlight a `folder` is "`".
5. A horizontal rule is "----" on a single line.
6. Emphasis is done with *one* or **two** asteriks.
7. Image tags are like this: **5th Grade Basketball**
!"[]"({{ site.url }}/images/b1.jpg)

Mac Tipsheet
--------------
1. **three finger swipe** toggles through all full screen applications.
2. **Cmd / Tab / (Shift)**
3. **shell to open as finder folder** "Open ." toggle through open applications.


Pry Tipsheet
------------

Pry
Pry is a REPL (Read Eval Print Loop)

#commands in pry shell
show-method pry

#invoke pry from command line 
ruby -r pry file.rb.

#insert into file.rb
binding.pry

#access to variables by typing variables

#advance to next binding
<ctrl> D

#when writing a script in the command line
show-input
amend-line
edit  #opens a browser (currently emacs) 

#replay history
hist    #use “u” and “d” and vi commands, search with “/“, advance “n"
hist —tail 10
hist —replay 216..224 #reruns the script
hist -n   #use to view without numbers. useful for cut paste code

#play files and methods as inputs
load ‘file.rb’
play 5  #executes line 5 of program file.rb
play 5..7  #executes multiple lines

Rails Tipsheet
--------------
1. **generic scaffold command** rails generate scaffold Opportunity opportunity:text agency:string opp_type:string  post_date:date response_date:date link:string  comments:text like:integer

2. **generic migration command** rails generate migration add_values_to_opportunity type:string priority:integer

3. tail -f log/development.log  #shows your rails logs in a console shell

4. has_many, through
rails generate model FaVpr functional_area_id:integer vpr_id:integer
models: fa_vpr.rb  has_many :vprs, has_many :functional_areas
        vpr.rb    has_many :functional_areas, through: :fa_vpr
in the console, call by vpr_functional_area_ids



Rake Tips
---------
1. rake db:reset #combo command means...rake db:drop and db:schema:load or rake db:migrate

2. rake db:rollback STEP=1 #goes back one migration. useful if you are maintaining tables via migration scripts.




Ruby Tipsheet
--------------
#if my_array is nil, create a new array
my_array ||= []

#Blocks, Procs, Lambdas
A block is code you can store in a variable like any other object and run on demand.  
A block is like a method that is not associated with any object
*addition = lambda {|a, b| return a + b }*

++Scope++ is the context which its visible to the program.
from [Codeschool](http://www.codecademy.com/courses/ruby-beginner-en-MFiQ6/1/1?curriculum_id=5059f8619189a5000201fbcb).
# $global_var, @@class_var, @instance_var
{% highlight ruby %}
class Now
  $place = "Indiana" #global variable
  @@here = {hello: "Hello, fishers"} #class variable

  def who(name, occupation)
    @name = name
    @occupation = occupation
  end

  def current_user
    @name
  end
  def self.display_here
    @@here
  end

  matt =Now.new("Matt", "Lumberjack")
  puts matt.name  #call instance var
  puts $place  #global, access directly
  puts Now.display_here  #class var belong to the class

{% endhighlight %}
++Namespacing++ is the act of keep methods and constants in named spaces.

++::++ This is a scope resolution operator. It states where you are looking for code.

++self++ refers to the current object.

Sublime Tipsheet
----------------


