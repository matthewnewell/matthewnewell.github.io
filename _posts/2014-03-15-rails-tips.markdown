---
layout: post
title:  "Rails Tips"
date:   2014-03-15 15:00:00
categories: code tips
---

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




