# Super-Blog
![Logo Github](https://github.com/Patrykkbbb/Super_Blog/blob/main/app/assets/images/logo.png)

Blog application with standard blog features. 

# Table of Contents
- [General Information](#general-information)
- [Technologies Used](#technologies-used)
- [Features](#features)
- [Screenshots](#screenshots)
- [Setup](#setup)
- [Usage](#usage)
- [Project Status](#project-status)
- [Contact](#contact)

## General Information
Fullstack blog application created with Ruby on Rails framework, with features like authentication, comments, managing posts, user accounts, and user comments. The site has a waiting list where posts go before the administrator approves them to be published on the main page. The application has a user system, and each user is shown in the right column on the pages. The application is styled in a nice way using the Bootstrap frontend framework and a little improved with CSS. I took this project to show my fullstack skills.
* The website uses responsive CSS styles, which adapt to the screen size.
* Simple tests have been done on the models using RSpec.
* The website is available in two languages (Polish and English) using i18n.


## Technologies Used
* Ruby - version 3.3.5
* Nodejs - version 20.17.0
* Ruby on Rails - version 7.2.1
* HTML5
* CSS 
* Rspec-rails - version 7.0
* Devise - version 4.9
* Ransack - version 4.2
* Pagy - version 9.1
* Rails-i18n - version 7.0
* Dart Sass Sprockets - version 3.1.0
* Bootstrap - version 5.3
* jQuery-rails - version 4.6.0
* PostgreSQL - version 17.0

## Features

* Ability to comment on posts
* Ability to add and change posts
* Ability to create and manage user accounts
* Role division on the site for users and administrators 
* Website translation into two languages with the option to choose one
* Role division: Users can create posts, while admins can check and approve content before it is published.

## Screenshots

image0.jpeg

## Setup

### 1. Requirements

* Ruby (version 3.3.5) You can check the Ruby version by typing in the terminal:

`ruby -v`

* Rails (version 7.2.1)

`gem install rails -v 7.2.1`

* Database. Make sure you have the server installed and running.

### 2. Installation

* Clone the repository. 
Open the terminal and clone the repository to your local device:

`git clone https://github.com/Patrykkbbb/Super_Blog`

### 3. Install dependencies
* Go to the project directory

`cd super_blog`

* Install the project's dependencies using Bundler

`bundle install`

### 4. Create and configure the database 

```
rails db:create
rails db:migrate
```

### 5. Run the application and load test data

```
rails db:seed
```

### 6. Run the application
To run the application, type in the console:

`rails server`

The application should be available at 
[http://localhost:3000](http://localhost:3000)

### 7. Run tests (optional)
You can run tests by typing in the console:

`rspec spec`

# Usage

* To use this application, after starting the server, go to your browser and enter: [http://localhost:3000](http://localhost:3000)

### Registration 
* Users can register by going to the "Registration" section, filling in their information, and clicking the 'Register' button. 
You will then receive a message to the email address you provided with a verification link that will take you to the site, so you can log in. This is a one-time process to confirm the user's registration.

### Login

* After creating an account, you can log in on the "Login" page.

### Adding posts

* Logged-in users can add posts on the site. After being added, the post goes to the waiting list with a `pending` status. If the administrator agrees to publish it, it will appear on the main page.

### Browsing posts

* Users can browse and search for posts. By clicking on post details, they can comment or view the author's profile.

### Modifying and deleting posts

* Post authors can edit or delete their posts. Administrators can do the same with all posts on the site.

### Useful command

You can use the following command in the terminal to see all posts on the site in the console:

```
rails console
BlogPost.all
```

# Project Status

The project is complete, but new features, tests, and bug fixes are being added continuously.

# Contact

Created by [Patryk Blachowicz](https://github.com/Patrykkbbb) - feel free to contact me!
