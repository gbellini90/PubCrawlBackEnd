# PubCrawlin' Backend README

## Project Overview

Pubcrawlin' is an app to create pubcrawls with a user's group of friends. Users can log in or sign up to view all of their friends, groups and pubcrawls. When a user visits their profile page, they can view their established friendships, their pending friendships and all the users of the sight. They can also accept friend requests and make friend requests. From there, a user can navigate to their group page where they can view groups that they have created(if any) and groups they are already a member of(if any). A user can create a group from their list of friends. With that group, a user can then create a pubcrawl. On the pubcrawl page, a user can search a neighborhood by zip code or neighborhood name and begin adding bars to their pubcrawl.They can view the bars they've added on the map below to make sure that their pubcrawl makes logistic sense. After a pucbrawl is created a user can view that pubcrawl's details back on the group page. 


## Technologies Used

React, Redux, Thunk, Ruby on Rails (Rails API backend), Yelp API, Leaflet, HTML, CSS, JSON, Material UI & GoogleFonts, ActiveModel Serializers, Faker, ‘dotenv-rails’ and other Ruby gems

## Getting Started

### Prerequisites
To use, clone down this repo and open with your preferred text editor. This project uses Ruby on Rails, so you’ll need to make sure you have both installed as well as PostgreSQL as the database resource.

Because the backend pulls data from the Yelp API, you will also need to obtain an API key. Head to https://www.yelp.com/developers/documentation/v3 to login or signup with account credentials and from there you’ll be able to request an API Key. 

### Installing
The project gemfile specifies Ruby 2.6.0. If there are any issues, just install latest version of Ruby, update your gemfile, open terminal and in the root of the project directory run:

`bundle install`
or simply
`bundle`

to install gem dependencies. Once that completes successfully, run:

`rake db: create && rake db:migrate`

to facilitate backend set up. You can then:

`rails c`

and jump into the console to test out that tables and relationships were established correctly, that class instances can be created and related successfully, etc. To successfully hide your API Key, create a .env file and save your key as:

`API_KEY=your-api-key-goes-here`

For further information, the full dotenv-rails documentation can be found here: https://www.rubydoc.info/gems/dotenv-rails/2.1.1. **Make sure to add .env to your .gitignore file**, then run:

`rails db:seed`

to create the Faker user accounts. If the development database is running correctly, then the seed data should be successfully created and final step is to test the server. To activate it, run:

`rails s`

and once the terminal says it’s running, navigate to http://localhost:3000. If there’s  “Yay! You’re on Rails!” welcome page, then you can go to http://localhost:3000/api/v1/users to check that all the data is being rendered properly. If so, it’s time for the frontend (link below). 🤙

## Frontend Link

[PubCrawlin'FrontEnd](https://github.com/gbellini90/PubCrawlFrontEnd/tree/master/pubcrawlfrontend)

## Demo Video

[PubCrawlin'](https://youtu.be/rxKEzIz-uek)

## Author

**Gabrielle  Bellini**

≫ gbellini90@gmail.com<br/>
↳ *LinkedIn*: https://www.linkedin.com/in/gabrielle-bellini/<br/>
↳ *GitHub*: https://github.com/gbellini90<br/>
↳ *Blog*: https://medium.com/@gbellini90

## License

This project is licensed under the MIT License - see the [LICENSE.md](/LICENSE) file for details.
