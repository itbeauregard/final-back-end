# {Monument App} API

## Links to other parts of the application

[Deployed app, client-side](https://react-final-project.herokuapp.com/)

[Client-side GitHub Repo](https://github.com/itbeauregard/ReactFinalProject)

[Deployed API](https://monument-app.herokuapp.com/)

[ERD](https://i.imgur.com/37fsvDO.png)

## API End-Points

These are the only routes that my application currently or may eventually use. I omitted routes involving the example routes that came with the Rails template.

| Verb   | URI Pattern            | Controller#Action     |
|--------|------------------------|-----------------------|
| POST   | `/sign-up`             | `users#signup`        |
| POST   | `/sign-in`             | `users#signin`        |
| DELETE | `/sign-out/:id`        | `users#signout`       |
| PATCH  | `/change-password/:id` | `users#changepw`      |
| GET    | `/questions`           | `questions#index`     |
| POST   | `/questions`           | `questions#create`    |
| GET    | `/questions/:id`       | `questions#show`      |
| PATCH  | `/questions/:id`       | `questions#update`    |
| DELETE | `/questions/:id`       | `questions#destroy`   |
| GET    | `/user_answers`        | `user_answers#index`  |
| POST   | `/user_answers`        | `user_answers#create` |
| GET    | `/user_answers/:id`    | `user_answers#show`   |
| PATCH  | `/user_answers/:id`    | `user_answers#update` |
| DELETE | `/user_answers/:id`    | `user_answers#destroy`|

## Installation

1. Fork and clone this repository.
2. `Bundle install` dependencies.

## Technologies Used & General Approach

This API was built using Ruby on Rails with a PostGreSQL database. I had a hard time visualizing my tables at first because I was so excited about the user experience for my app. I had originally conceived of having a table each for locations, questions, and answers. However, once that vision came to reality, I experienced great angst trying to connect all that data. What I realized was that the tables were storing fairly static curriculum that could be easily all stored in one table--locations, questions, and answer choices combined. It may not be the most ideal orientation for scaling up the app, but it works for now. I created a user_answers table to account for the eventual recording of user answers so the front end could display user progress. I haven't yet fully implemented this table on the front end.


## Unsolved Problems

1. The front end has not fully implemented the join table between questions and users. In the future, I'd like for users to be able to track their progress via this table and for locations to display when they are completed.
2. I have a media column for questions that I was hoping would store images or audio or video. I have not used that column at all. In the future, I'd like to store media links to embed in a question.
