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
  <small>CMMI on Rails</small>
</ul>
<ul><a href="teamfbo.html">teamFBO:</a> 
  <small>Crowdsource Government Business Opportunities</small> 
</ul>
<ul><a href="thanktheteacher.html">Thank The Teacher:</a> 
  <small>Parent Funded Gift Cards for Teachers and Coaches</small> </ul>
<ul><a href="sj22.html">shopjulytwentytwo:</a> <small>Funky fresh things for modern hippies.</small> 
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