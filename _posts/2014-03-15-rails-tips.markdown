---
layout: post
title:  "Rails Tips"
date:   2014-03-15 15:00:00
categories: code, tips
---

Rails Tipsheet
--------------
1. **generic scaffold command** rails generate scaffold Opportunity opportunity:text agency:string opp_type:string  post_date:date response_date:date link:string  comments:text like:integer

2. **generic migration command** rails generate migration add_values_to_opportunity type:string priority:integer

3. tail -f log/development.log  #shows your rails logs in a console shell

Rake Tips
---------
1. rake db:reset #combo command means...rake db:drop and db:schema:load or rake db:migrate




