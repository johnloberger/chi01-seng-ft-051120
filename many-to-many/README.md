# Many to Many Relationships

What is many to many?
a A has many of B && a B has many of A
If both sides are true, it's many to many

😖User has Many tweets, tweet has One user who wrote - One to Many (Not a many to many!)

User -------< PostedTweet

Examples?

😖User > ------- < LikedTweet
😎User -----< Like >----- LikedTweet 🌟

      user Dad, tweet MMMM
      user Mom, tweet MMMM
      user dad, tweet fun

A patient has many doctors, a doctor sees many patients

Teacher ----< TeacherStudent >---- Student

1: P. Adams                       1: F. Frizzle
2: T. Davis                       2: G. Yellow
3: M. Bison                       3: Seth

              teacher 1, student 1
              teacher 1, student 2
              teacher 2, student 2
              teacher 2, student 3


Restaurant ----< Visit >---- Customer

FeralCat -----< Squatting >----- Backyard

FruitBush ----< Meal >---- Bird

Based off of yesterday's code, we're going to add the ability to like a tweet. We describe this specific relationship between users and tweets as a "many to many" relationship. Meaning that a user can like many tweets and a tweet can be liked by many users!

> **Note:** This is a separate relationship from the one to many relationship between users and tweets that we built yesterday. That relationship could be called "tweets" or "posted tweets", whereas this relationship should be called "liked tweets".

## The world so far - completed user stories

* Create a User class. The class should have these methods:
  * `#initialize` which takes a username and have
  * a reader method for the username
  * `#tweets` that returns an array of Tweet instances
  * `#post_tweet` that takse a message, creates a new tweet, and adds it to the user's tweet collection
* Create a Tweet class. The class should have these methods:
  * `Tweet#message` that returns a string
  * `Tweet#user` that returns an instance of the user class
  * `Tweet.all` that returns all the Tweets created.
  * `Tweet#username` that returns the username of the tweet's user

## Objectives

## Deliverables

* User class
  * `#like_tweet` that accepts as a tweet instance as a parameter
  * `#liked_tweets` that returns a collection of all the tweets this user has liked
* Tweet class
  * `#likers` that returns a collection of all the Users who have liked this tweet
