---
layout: default
title: Useful Web Service
---
  
{% highlight ruby %}
  def web_service
    %{ machine-to-machine interaction utilizing 
       enterprise power and functionality to
       enable always-on applications. }
  end

  def useful_web_service
    %{ experiments and development notes }
  end
{% endhighlight %}

<br>
<h4>Experiments</h4>
<ul><a href="bsfc.html">Better Stronger Faster Cheaper:</a>
  CMMI on Rails
</ul>
<ul><a href="teamfbo.html">teamFBO:</a> 
  Crowdsource Government Business Opportunities 
</ul>
<ul><a href="thanktheteacher.html">Thank The Teacher:</a> 
  Parent Funded Gift Cards for Teachers and Coaches 
</ul>
<ul>
  <a href="sj22.html">Shop July Twenty Two:</a> Funky fresh things for modern day hippies
</ul>

<br>

<div id="home">
  <h4>Development Notes </h4>
    <ul class="posts">
    {% for post in site.posts %}
      <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
      
    {% endfor %}
  </ul>
</div>