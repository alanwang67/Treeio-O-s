# Treeio-O-s
APCS2 Final project <br>
Treeio-O-s<br>
Alan Wang, Sean Roudnitsky, John Liu<br>
Tower Defense<br>
## Description
This game is a recreation of a tower defense game. Gameplay consists of picking and placing towers along designated spaces around a path. The player has money and health to kill enemies that try to kill you. Towers will damage enemies and kill them and when the enemies reach the end of the path, they will subtract from your health. You will win when you kill all the enemies, or lose when you lose all of your health.
## How it Works
There are abstract classes for the towers and enemies. Each of those classese will have subclasses for different types of towers and enemies. Towers will all have a range and a price, as well as an amount of damage they deal to enemies. Towers will be displayed as different colored circles. Enemies will all have a size and health, as well as changing xcor and ycor values that will change as they move across a path. They have a damage method that will subtract from their health. Enemies will be displayed as different colored circles on a path. In the driver class, there will be an arraylist of enemies and towers that will be displayed on a board consisting of squares that represent the places toweres and enemies can be. There are also instance variables for money, health, level, and chosen tower. When you click on the map, you can place the chose tower as long as you have sufficient amount of money. When the enemies reach a certain xcor and ycor, enemy health will be subtracted from your health.
