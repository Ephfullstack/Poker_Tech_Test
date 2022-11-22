require './poker'

# Test Data

data = [
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

# Creating Instance of a poker by passing hand data as an argument to poker class initialize method.

poker = Poker.new(data)

# Calling poker class instance method which ranks hands.
poker.rank_hands
