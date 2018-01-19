@tutorials
Feature: Click on tutorial links

  Scenario Outline: As a user I should be able to view the tutorials
    Given I visit the tutorials page
    When I click on a tutorial I am taken to that tutorial page <tutorial>

    Examples:
    | tutorial                                        |
    | Getting started guide for students.  |
    | Lesson guide for coaches |
    | Lesson 1 - Introducing HTML                     |
    | Lesson 2 - Introducing CSS                      |
    | Lesson 3 - Beyond the basics                   |
    | Lesson 4 - CSS, layouts and formatting          |
    | Lesson 5 - Dive into HTML5 & CSS3               |
    | Lesson 6 - Advanced HTML5                       |
    | Lesson 7 - Media queries and responsive design  |
    | Lesson 1 - Introduction to JavaScript |
    | Lesson 2 - Expressions, Loops and Arrays |
    | Lesson 3 - Introduction to jQuery |
    | Lesson 4 - HTTP Requests, AJAX and APIs |
    | Lesson 5 - HTTP Requests, AJAX and APIs (part 2) |
    | Lesson 6 - Drawing in Canvas |
    | Lesson 7 - Introduction to Testing |
    | Lesson 8 - Building your own app |
    | Lesson 1 - Introduction to Ruby |
    | Lesson 2 - Ruby Basics |
    | Lesson 3 - Ruby Basics (part 2) |
    | Lesson 4 - Object Oriented Ruby and Inheritance |
    | Lesson 5 - Object Oriented Ruby and Inheritance (part 2) |
    | Installing Python |
    | Lesson 1 - Strings, Integers and Floats |
    | Lesson 2 - Playing with variables |
    | Lesson 3 - Lists, Tuples and Dictionaries |
    | Lesson 4 - Fun with Functions |
    | Python For You and Me |
    | Learn Python The Hard Way |
    | Lesson 1 - Introduction to PHP |
    | Lesson 1 - Introduction to the command line |
    | Introduction to version control |
    | Introduction to the git command line |
