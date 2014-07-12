---
layout: default
title: Useful Web Service
---
###Useful Web Service

{% highlight ruby %}

  def web_service
    %{ machine-to-machine interaction utilizing 
       enterprise power and functionality to
       enable always-on applications. }
  end

  useful_web_service = ["experiments", 
                        "development blog"]


{% endhighlight %}



###Experiments
* [Thank The Teacher:](experiments.html#ttt) Crowdfund thank-you gifts for teachers
* [Team FBO:](experiments.html#teamfbo) Crowdsource Federal Business Opportunities
* [Better Stronger Faster Cheaper:](experiments.html#bsfc) A dynamic rendering of the CMMI 
* [Shop July Twenty Two:](experiments.html#sj22) Funky fresh things for modern day hippies

<div id="home">
  <h3><i class="icon-bookmark"></i> Blog</h3>
  <ul id="blog-posts" class="posts">
    {% for post in site.posts %}
      <li><span>{{ post.date | date_to_string }} &raquo;</span><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
</div>