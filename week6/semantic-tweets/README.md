# Semantic tweets

The task for week 6 will involve lots of tweets, API calls, and positive vibes!

## TL;DR
Create an application that fetches tweets from user's Twitter feed (using [Twitter's REST API](https://dev.twitter.com/rest/public)) then pass them to Semantria to find out which tweets are positive, neutral or negative (using [Semantria's REST API](https://semantria.com/api)) and display only the positive ones.

## Requirements
You obviously need a Twitter account with lots of data in the feed. You'll also have to register for the free Semantria service in order to use their classification API.

## Restrictions
Make sure you don't use some fancy library wrapping the APIs. We'd like you to work directly with the API provided by the service.

## Extended
In addition to the functionality above, you should add a form for posting new tweets. The content of the tweet should first be passed through Semantria and only if the sentiment of the tweet is positive it should be posted to Twitter.
