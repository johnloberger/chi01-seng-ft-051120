# OO Basics Review

## Objectives

- Practice building features based on written instructions
- Practice testing code as we write it
- Review object initialization
- Review attribute readers and writers
- Review class and instance methods/scopes
- Review self
- Model a one to many relationship

## Introduction

You are working on a freelance project for Gordon Bombay, former hockey wunderkind and current midlife crisis haver. Gordon has a team to lead, and he's nervous because there are a lot of jerseys to keep track of. 

Players wear multiple jerseys over the season and each jersey belongs to someone. (one - many player - jerseys)

A player has a name and a jersey size ("S", "M", "L", "XL").

A jersey has a size (same choices as above), a version ("home"/"away"/"sponsor appreciation day") and a number.

## Deliverables

<!-- Initializing -->
`Player.new` should take a name and a jersey size and return an instance of a Player.
`Jersey.initialize` should create a Jersey instance using arguments for size, version, and number.

<!-- Attribute readers/writers/accessors -->
`Player#name` should return the Player's name
A Player instance should have methods to read or change their jersey size

`Jersey#player` should return the Player the Jersey is assigned to, or nil if the Jersey is unassigned

`Jersey.all` should return an array of all initialized instances of Jersey

`Player#assign_jersey` should take a Jersey and assign it to that Player

`Player#jerseys` should return a list of all jerseys assigned to the player

`Jersey.unassigned` should return a list of Jerseys belonging to no one.

`Player#possible_jerseys` should return a list of unassigned Jerseys that would fit that player.