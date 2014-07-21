---
layout: general
title: Useful Web Service
---

###Experiments
* [Thank The Teacher:](experiments.html#ttt) Crowdfund thank-you gifts for teachers
* [Better Stronger Faster Cheaper:](experiments.html#bsfc) A dynamic rendering of the CMMI 
* [Shop July Twenty Two:](experiments.html#sj22) Botique retail

<div id="home">
  <h3><i class="icon-bookmark"></i> Blog</h3>
  <ul id="blog-posts" class="posts">
    {% for post in site.posts %}
      <li><span>{{ post.date | date_to_string }} &raquo;</span><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
</div>