---
layout: post
title: Rails 4 Active Record Association has_many, through  
categories:
- blog
---

The Setup
---------
A hospital has physicians and patients.  A physician has many patients. A patient has many physicians. They two parties meet via appointments. Appointments have a date, time, location, patient, and physician.

* Patient needs: Do I have any physician appointments? When, where, & with whom?
* Physician needs: Do I have any appointments today? Show me each appointment location, time, and name of each patient. 

In your shell...

{% highlight ruby %}

rails new hospital
cd hospital
rails generate scaffold physician name:string
rails generate scaffold patient name:string
rails generate scaffold appointment location:string date:date time:time physician:references patient:references

{% endhighlight %}

Now, go to your models and make 'em look like this...

{% highlight ruby %}
class Physician < ActiveRecord::Base
  has_many :appointments
  has_many :patients, :through => :appointments
end

class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :patients, :through => :appointments
end

class Appointment < ActiveRecord::Base
  belongs_to :physician
  belongs_to :patient
end

{% endhighlight ruby%}

Open up your controllers and croll down to the bottom and check out the strong parameters. Physician is only allowed to create :physician. Patient is only allowed to create :patient.  Things get spicy when you check out the appointments_controller strong parameters.  It looks like this (note the :physician_id and the :patient_id):

{% highlight ruby %}

params.require(:appointment).permit(:location, :date, :time, :physician_id, :patient_id)

{% endhighlight ruby%}

Migrate your database
{% highlight ruby %}
rake db:migrate
{% endhighlight ruby %}

And then make some data in the console

{% highlight ruby %}
rails c
dr_fred = Physician.create!(name: "Dr. Fred")
dr_cindy = Physician.create!(name: "Dr. Cindy")

paitent_bob = Patient.create!(name: "Bob the Patient")
patient_sue = Patient.create!(name: "Sue the Patient")
{% endhighlight ruby%}

Everything gets glued together in the appointments table with the physician and patient record id. Remember the Appointments_Controllers strong parameters?. Lets check our ids.

{% highlight ruby %}
dr_fred.id  #=>1
dr_cindy.id #=>2
patient_bob.id #=>1
patient_sue.id #=>2
{% endhighlight %}

Bob wants to make an appointment with Dr. Cindy at the hospital today. Here goes...

{% highlight ruby %}
an_appointment = Appointment.create!(physician_id: 1, patient_id: 2, date: Date.today, time:Time.now, location: "The Hospital")
{% endhighlight %}

And where done! Here are a few ways to check out your data in the console.

{% highlight ruby %}
dr_fred.appointments.where(date: Date.today).count  #=>1
dr_fred.appointments.where(date: Date.tomorrow).count  #=>0

patient_sue.appointments.first.physician.name  #=>"Dr Fred"

{% endhighlight %}


References
---------
Inspired by [has_and_belongs_to_many relationship in Rails 4.x](http://habtmexexample.herokuapp.com/instructions).

The scenario is based on the example on [guides.rubyonrails.org](guides.rubyonrails.org/association_basics.html#the-has-many-through-association)
