# ruby-tdd-practice

## Introduction

This is a practice ruby TDD project

First I have absolutely no idea of what would i create.

I do this for two main reasons:
- practice what I have read so far about TDD and ruby
- have fun

## Functionality

I am thinking it as I am currently writing this description.

Let's say we have a `Factory` class.

Let's say that `Factory` can do this:

- Can be created and given name

- Can have `Resource` of different type and quantity

- Can use `Technology` to construct items.

- Can have a `Storage` space which can store items

  * Each of the above must be limited

  * factory can be upgraded and expand these limits

- Can collect production experience and upgrade certain aspect

- Can ship items to different `Storage`
- Can receive more `Resource` in factories `Storage`


Let's say this is it for now. Looking at the above I will need to define some objects - `Resource, Technology, Storage`.

In order to make our factory closer to opening let's create some `Storage` space in it.
`Storage`:

- Can have name
- Can have size
- Can have `Location`
  - `Location` won't be defined now, but on a later moment when there are multiple factories and `Storage`s we would like to know their `Location`
  - It will be the place of an object(.e.g. `cities[:city][:district][:address]`)

After we have a `Storage` let's fill it in with `Resource`.

`Resource`:
- Basic `Resource` interface.
- basic options set by default to be `false`:
  - can_melt?
  - can_be_cut?
  - can_be_smithed? - requires to be able to melt
  - others..


Now let's start writing some tests.
