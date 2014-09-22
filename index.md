---
layout: general
title: Useful Web Service
---

###Projects
* [CMMI Club:](cmmi.html) Pocket guide 
* [Team FBO:](teamFBO.html) Crowdsource federal business opportunities
* [Thank The Teacher:](thanktheteacher.html) Crowdfund thank-you gifts for teachers
* [Shop July Twenty Two:](july_twenty_two.html) Botique retail

###Presentations
* [Learning Ruby:](http://www.slideshare.net/matthewnewell/ruby-newbie-26183481) Pivot from suit to nerd
* [Demonstration Property](http://www.slideshare.net/matthewnewell/wildlife-and-watershed-friendly-residential-landscape): Environmentally responsible residential landscape
* [Watershed awareness article](http://www.townepost.com/geist/spring-fertilization-tips-geist-watershed-alliance/): The solution to pollution is **not** dilution
* [Meet the Geist Watershed:](http://www.slideshare.net/matthewnewell/geistfall-creek-watershed-public-meeting) Watershed awareness public outreach

<div id="home">
  <h3><i class="icon-bookmark"></i> Blog</h3>
  <ul id="blog-posts" class="posts">
    {% for post in site.posts %}
      <li><span>{{ post.date | date_to_string }} &raquo;</span><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
</div>
