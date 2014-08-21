---
layout: post
title: Lets Build a "Forgot Password" Mailer 
categories:
- blog
---

The Setup
---------
You use a vanilla Auth Logic configuration for user authentication. Now it's time to configure a "forgot password" loop.  You are using Rails 4.x and Send Grid for sending email. 

1. User attempts log in and fails
2. User selects forgot password link 
3. User enters email into form and presses submit
4. Service emails reset url to user if user.email is valid. The reset url should expire.
5. Via user's email, user selects reset url and redirects to "enter new password" form.



