[![Build Status](https://travis-ci.org/jbropho/rps-challenge.svg?branch=master)](https://travis-ci.org/jbropho/rps-challenge)
# RPS Challenge
## Makers Academy weekend challenge to create a rock, paper, scissors, test-driven web-application in sinatra.

[Challenge Specification](https://github.com/makersacademy/rps-challenge)
## Tech:

Ruby - Rspec - Sinatra - Capybara

## Setup

        $ git clone https://github.com/jbropho/rps-challenge
        $ cd rps-challenge
        $ bundle install
        $ rackup -p 9292
        visit localhost:9292/play_ai
        enter a player name and press submit

## Testing
        
        $ rspec


## Approach
I approached this task by trying to create a design which would allow me to implement single
and multiplayer functionality using as much shared code as possible. This turned out
to be an instructive error, with the time spent refactoring my codebase leading to me
not having time to implement the extra functionality.

## Positives
* Achieved goal from previous weekend of learning to test Sinatra routers
* 100% test coverage with a full feature test

## Focus for the coming week
* Practice finding the simplest possible solution to each problem
