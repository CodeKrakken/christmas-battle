Battle
=======

Second version of Makers [challenge](https://github.com/CodeKrakken/battle), this time built solo at Christmas 2019. A VERY simple "game" designed to explore and implement the functionality of the MVC pattern and the Request/Response cycle.

User stories
---

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

Setup
---

* `git clone https://github.com/CodeKrakken/christmas-battle.git`
* `cd christmas-battle`
* `bundle install`

Usage
---

The game runs in the browser. Just run `rackup` in your terminal, and then visit `localhost:whatever-port-rackup-is-running-on` in your browser. You can then "play" the "game".

Screenshot
---

<img width="1280" alt="Screenshot 2020-01-01 at 23 21 10" src="https://user-images.githubusercontent.com/52076323/71647353-7e88fe80-2ced-11ea-8d14-fb4d54771144.png">
