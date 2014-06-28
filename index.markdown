---
layout: default
title: Useful Web Service
---
  
{% highlight ruby %}
  def web_services
    %{ machine-to-machine interactions utilizing 
       enterprise power and functionality to
       enable always-on applications. }
  end

  def useful_web_service
    %{ nerd notes, learning, lean startup experiments }
  end
{% endhighlight %}

<br>
<h4>Experiments</h4>
<ul><a href="teamfbo.html">teamFBO.com:</a> 
  <small>Crowdsource Government Business Opportunities</small> </ul>
<ul><a href="http://teaser-thank-the-teacher.herokuapp.com/about">Thank The Teacher:</a> 
  <small>Parent Funded Gift Cards for Teachers and Coaches</small> </ul>
<ul><a href="http://www.shopjulytwentytwo">teamFBO.com:</a> <small>Funky fresh things for modern hippies.</small> </ul>
<br>

<div id="home">
  <h4>re:Newell </h4>
    <ul class="posts">
    {% for post in site.posts %}
      <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
      
    {% endfor %}
  </ul>
</div>