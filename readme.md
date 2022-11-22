# Poker Tech test  

This is a Wondr Medical tech test designed to rank multiple hands of cards in descending order.

### Requirements

Given the JSON included in the hands.json file, representing an array of poker hands, write a Ruby program to rank these hands in order.
Winning hands can be found at https://en.wikipedia.org/wiki/List_of_poker_hands

Aces are represented as 1, Jacks as 11, Queens as 12 and Kings as 13.

We ask that you spend no more than 1 day on this task. If you do not complete it, do not worry, we are interested in the progress you made and the approach you took.

Please create a private GitHub repo for this task and commit your code. When you are happy to submit, please add the following accounts as collaborators:
- Douglas F Shearer ([dougal](https://github.com/dougal)) 
- Adam Snow ([adamjohnsnow](https://github.com/adamjohnsnow))
- Dash Boyles ([Dash1704](https://github.com/Dash1704))
- Frank McKenna ([frank-mck](https://github.com/frank-mck))

## Running the Program

This Program is run within the terminal.

in order to sort the hands by rank type "ruby run.rb" in the terminal and you should receive the cards being ranked as expressed:


Rank: 6, Card:[#<Card:0x00007f915d841d18 @rank=1, @suit="club">, #<Card:0x00007f915d841cf0 @rank=3, @suit="club">, #<Card:0x00007f915d841cc8 @rank=8, @suit="club">, #<Card:0x00007f915d841c78 @rank=9, @suit="club">, #<Card:0x00007f915d841c50 @rank=11, @suit="club">]


Rank: 5, Card:[#<Card:0x00007f915d841a20 @rank=2, @suit="club">, #<Card:0x00007f915d8419f8 @rank=3, @suit="heart">, #<Card:0x00007f915d841930 @rank=5, @suit="spade">, #<Card:0x00007f915d841908 @rank=4, @suit="club">, #<Card:0x00007f915d8418b8 @rank=1, @suit="diamond">]


Rank: 3, Card:[#<Card:0x00007f915d841fc0 @rank=5, @suit="heart">, #<Card:0x00007f915d841ef8 @rank=8, @suit="heart">, #<Card:0x00007f915d841ed0 @rank=1, @suit="spade">, #<Card:0x00007f915d841ea8 @rank=5, @suit="club">, #<Card:0x00007f915d841e80 @rank=5, @suit="diamond">]

Rank: 3, Card:[#<Card:0x00007f915d841b88 @rank=2, @suit="diamond">, #<Card:0x00007f915d841b60 @rank=2, @suit="heart">, #<Card:0x00007f915d841b38 @rank=2, @suit="spade">, #<Card:0x00007f915d841ae8 @rank=6, @suit="club">, #<Card:0x00007f915d841a98 @rank=12, @suit="diamond">]


## Planning

Below is a JSON file representing the poker hands. 

[
  [
    {"suit": "heart", "value": 5},
    {"suit": "heart", "value": 8},
    {"suit": "spade", "value": 1},
    {"suit": "club", "value": 5},
    {"suit": "diamond", "value": 5}
  ],
  [
    {"suit": "club", "value": 1},
    {"suit": "club", "value": 3},
    {"suit": "club", "value": 8},
    {"suit": "club", "value": 9},
    {"suit": "club", "value": 11}
  ],
  [
    {"suit": "diamond", "value": 2},
    {"suit": "heart", "value": 2},
    {"suit": "spade", "value": 2},
    {"suit": "club", "value": 6},
    {"suit": "diamond", "value": 12}
  ],
  [
    {"suit": "club", "value": 2},
    {"suit": "heart", "value": 3},
    {"suit": "spade", "value": 5},
    {"suit": "club", "value": 4},
    {"suit": "diamond", "value": 1}
  ]
]

The aims is to design a OOP which will take the poker hands and rank them in descending order. i will carry out this task by using multiple classes with methods. The classes i will use include are..

*Card.rb

which will represent the cards and match them to there card values


*Run.rb

which will run the programme containing the cards into the poker class.

*Poker.rb

this will sort the cards in the ranking order

*Hand.rb

will be where i will use the json cards and structure the cards according to there winning hands.

### Poker winning hands 

I have gone online to the resources located on https://en.wikipedia.org/wiki/List_of_poker_hands and have understood the winning hands include.


-High card
-one pair
-two pair
-Three of a kind 
-five high straight 
-straight 
-flush
-full house
-four of a kind
-straight flush 
-rank count totals
-rank count hash
-rank values
-suits

I plan to organ this within the card class where i will then differentiate  each hand with its values.



## Questions for the Employer?

What would be the most desired output for the programme ?


