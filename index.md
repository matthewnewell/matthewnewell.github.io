---
layout: general
title: Useful Web Service
---

###Projects
* [Thank The Teacher:](projects.html#ttt) Crowdfund thank-you gifts for teachers
* [The CMMI Club:](projects.html#bsfc) A dynamic rendering of the CMMI 
* [Team FBO](projects.html#tfbo) Crowdsource federal business opportunities
* [Shop July Twenty Two:](projects.html#sj22) Botique retail
* [Early stage:](projects.html) To dos and work in progress (but isn't everything?)
* [Cutting Room Floor:](projects.html#cut) Good ideas poorly implemented or maybe not good ideas

###Presentations
* [Ruby Newbie:](http://www.slideshare.net/matthewnewell/ruby-newbie-26183481) first year with ruby & rails.
* [Geist Watershed Community Meeting:](http://www.slideshare.net/matthewnewell/geistfall-creek-watershed-public-meeting) Watershed awareness public outreach.
* [Demonstration Property](http://www.slideshare.net/matthewnewell/wildlife-and-watershed-friendly-residential-landscape): Environmentally responsible residential landscape.
* [Watershed awareness article](http://www.townepost.com/geist/spring-fertilization-tips-geist-watershed-alliance/): The solution to pollution is **not** dilution. 

<div id="home">
  <h3><i class="icon-bookmark"></i> Blog</h3>
  <ul id="blog-posts" class="posts">
    {% for post in site.posts %}
      <li><span>{{ post.date | date_to_string }} &raquo;</span><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
</div>

