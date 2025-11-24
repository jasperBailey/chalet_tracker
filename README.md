# README

Welcome to the Chalet Tracker project! This is a project to keep you hands and mind 
busy while in the Chalet. 

The end goal is an application that lets you register as being part of 
the Chalet, register any projects you plan to do while on the Chalet, and get involved 
in other peoples projects. Though for now, we're looking to get an application that runs


## Github access

Feel free to use your personal git account for this, or make a new one.

If your working on a feature, then create a branch called `feature/{name of feature}` 
and add a link that branch to your ticket in trello

Comments should be be short and informative 

To get your work into main, you have to raise a pull request and get it reviewed by at least one 
other team member

Merges into main should be squash commits

Don't delete your branch after merging

## Tasks

If you're very excited to get started, or have already finished this README,
then you can head over our Trello to pick up a task or see where the project is 
currently at.

There will be tasks with a green label called "Good for New Joiners" which are designed to be 
easy to pick up and run with

[Trello](https://trello.com/b/Px1aq2YR/chalet-tracker)

## Tech Stack

This project will be written with Ruby on Rails and host on AWS

For the current MVP, this mean an RDS/MySQL database, which connects 
to an ECS container running our Ruby on Rails application

### Ruby 

Ruby was chosen for this project as it's used by a number of government project
and is a relatively rare competency 

So if you've never used it before, don't worry neither have most of us! 
But before you get started, it worth doing some work learning the language and syntax

Here's some exercise, roughly in order

[Ruby in 20 minutes](https://www.ruby-lang.org/en/documentation/quickstart/)
- The official getting-started with Ruby guide

[Gilded Rose Kata](https://github.com/emilybache/GildedRose-Refactoring-Kata/tree/main)
- This is a great choice for learning any language, especially with unit testing

[Getting Started with Rails](https://guides.rubyonrails.org/getting_started.html)
- And the official Rails guide, though for this project you can skip the final step

### AWS

AWS (or Amazon Web Service) is one of the 3 biggest cloud providers (and the largest of them), 
which allows you to spin up resources that you'd normally need a server farm to use at the click of a button

We're using MadeTech AWS playground [link here] so we can use some resouces that would cost money for free,
you can find more details here [link]

You can learn more about the services we're using by clicking on the links below
- RDS - [Relational Database Service](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html)
- ECS - [Elastic Compute Service](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/Welcome.html)

## API 

For the complete, planned, api list you can check the Miro board here

// May want to change this to the Trello, depends where we put the API documentation
https://miro.com/app/board/uXjVJtNYH9c=/?share_link_id=18924273223

However for v1 of this project, we only want to implement a smaller number of API links

This will allow users to register themselves, to update their details, to get information about themselves and others

### MVP API LIST

This is done in order of development priority 

- GET users/
  - Gets all users
  - Response:
  
                "data": [{"id": "EMP-102", 
                "name": "Alicia Hopkins", 
                "currentProject": "PRJ-001" },
                { "id": "EMP-227",
                "name": "Example", 
                "currentProject": null}}]
  