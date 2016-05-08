INTRODUCTION

“Our Craigslist” is a website used to search apartments online by applying

various filters. It is used by the end users to search apartments by applying

filter for search criteria and helps them to select and make the right choice

and decision.

Craigslist is a massive international classifieds website. It’s very much like the

classifieds section in a newspaper except it’s free, and it reaches an audience

of millions of people in minutes.

How can you use Craigslist?

All you need to start is an email address. You can use Our Craigslist to buy, sell

or lease an apartment.

Requirement Specification:

We were given a github repository to work further on the project and enhance

its functionalities.

The functionalities that were already there in the repository app is the basic

search functionality.

We enhanced the website by adding features like authentication, nice layouts

and UI by using Ruby, JavaScript and CSS.

Some of the major requirements of this project that we worked upon are:

1. Adding authentication

2. Adding interactive content i.e. Images, More pages, tabs

3. Adding additional features

4. Use plugins from external source to enhance website

5. Adding additional functionality to enhance user experience

6. Adding more controllers

7. Adding database tables, columns

8. Adding more assets like JavaScript, CSS etc.

9. Adding more authentication

Implementation Steps:

1. Pulled the given project from the GitHub

2. Created the project in Cloud9

3. Started Webrick

4. Bundle Install

5. Bundle Update

6. Rake db:migrate

7. Run the project and fetch the url which will open the application

8. Once the project gets created in Cloud9, we did enhancement to the

code as per the requirement specifications.

9. For each enhancement we modified different types of files like

controllers, HTML, CSS, Java Script, DB files, etc.

10. Overall explanation of each enhancement is described in the next

section.

Implementation Description:

This section consists of the description of the enhancement done to the files.

What all files we modified for implementing each requirement.

1. Adding authentication: For adding the authentication on Our Craigslist

app, we added 3 functionalities:

1. Signup - For signup, we modified the show method in file

“app/controllers/users_controller.rb”

2. Login - For login, we modified “app/controllers/sessions_controller.rb&quot;

and log_in method in file “app/helpers/sessions_helper.rb”

3. Logout - For logout, we modified log_out method in file

“app/helpers/sessions_helper.rb”

Signup URL: https://rubyfinalproject-varshatomar.c9users.io/signup

Login URL: https://rubyfinalproject-varshatomar.c9users.io/login

2. Adding interactive content i.e. Images, More pages, and tabs

We have added the background image on the home page for the better look

and feel of the website.

For adding the image we modified the CSS “custom.css.scss”

URL: https://rubyfinalproject-varshatomar.c9users.io

3. Adding additional features: The additional feature that we have added to

the website is uploading a file feature on signup page. User will be able to

browse the desktop, select a picture for profile display. We modified

“new.html.erb” file for adding this functionality.

4. Use plugins from external source to enhance website

We added bootstrap CSS for adding nice styling to the pages. For custom

enhancement, we implemented styles in “custom.css.scss”

5. Adding additional functionality to enhance user experience

For additional functionality we have added the DASHBOARD to enhance user

experience.

We have added below static dashboards:

1. Highest Rated Apartments in May 2016

2. Most Searched Apartment in May 2016

6. Addding more controllers

We have added some more controllers to the application like

user_controller.rb and sessions_controller.rb

7. Adding database tables, columns

We added tables to “schema.db”. Some of the tables that we created are

“users”, “images”.

The table that we modified is “posts” table

“Images” table columns

Field Name Data Type

url text

post_id integer

created_at datetime

updated_at datetime

“Users” table columns

Field Name Data Type

name string

email string

created_at datetime

updated_at datetime

password_digest string

remember_digest string

admin boolean

activation_digest string

activated boolean

activated_at datetime

reset_digest string

reset_sent_at datetime

image string

8. Adding more assets like JavaScript, CSS etc.

Used JavaScript and CSS functionality to upload image and show preview of

the selected image on the screen.

URL: https://mhart-kashfiarahman- 1.c9users.io/signup

9. Adding more authentication

Activation By mail

Account activation is additional level of authentication provided in user

registration process. In this process, user will be sent with email for activation

token which in turn compares with the digest code in DB and based on

comparison output, account will be activated.

Flow Diagram

Steps involved:

1. For a newly registered user, when registration process is completed,

status in DB would be as “Unauthorized” until activation process is

completed.

2. Activation Token and Activation Digest would be generated and sends

an email with Activation Token to register email ID.

a. app/mailers/user_mailer.rb - Send email to registered ID

b. db/migrate/[timestamp]_add_activation_to_users.rb - Timestamp

in DB based on the time zone of the user

c. app/models/user.rb - Add user account activated code.

d. app/mailers/application_mailer.rb - With default from address

3. Once email is sent and when user click on Activation token, compares

with the Activation digest in the DB and validates and then status

changes to Authorized

a. user.update_attribute(:activated, true)

b. user.update_attribute(:activated_at, Time.zone.now)

Also have feature to remember account information, using remember

parameter and boolean value true in the update_attribute metho(:remember,

true)
