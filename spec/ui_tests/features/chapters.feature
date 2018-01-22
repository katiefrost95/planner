Feature: chapters

# @chapters_sign_out
# Scenario Outline: As a user logged in I can access the chapters links from the homepage
# 	Given I am on the codebar homepage
# 	When I click on the chapters <chapters>
#   Then expect page to be that chapter
#
#
#   Examples:
#   |  chapters          |
#   |  London            |
#   |  Brighton          |
  # |  Cambridge         |
  # |  voluptatem1       |
  # |  necessitatibus2   |
  # |  voluptate3        |
  # |  est5              |
  # |  tempore6          |
  # |  occaecati7        |
  # |  quia9             |
  # |  modi10            |
  # |  laudantium12      |
  # |  sapiente13        |
  # |  tempore14         |
  # |  odit15            |
  # |  repellat16        |
  # |  qui17             |
  # |  molestiae19       |
  # |  aliquam20         |
  # |  laborum21         |
  # |  voluptatem23      |
  # |  aut24             |
  # |  quos25            |
  # |  qui27             |
  # |  at28              |
  # |  quibusdam29       |
  # |  quod30            |
  # |  non31             |
  # |  maxime32          |
  # |  sint33            |
  # |  excepturi34       |
  # |  molestiae35       |
  # |  et36              |
  # |  vitae37           |
  # |  dolor38           |
  # |  reiciendis39      |
  # |  nulla40           |
  # |  et41              |
  # |  et42              |
  # |  repudiandae43     |
  # |  quo44             |
  # |  nulla45           |
  # |  perferendis46     |
  # |  nihil47           |
  # |  voluptatibus48    |
  # |  sit49             |
  # |  veniam50          |
  # |  ut51              |
  # |  aut52             |
  # |  et53              |
  # |  recusandae54      |
  # |  et55              |
  # |  quos56            |
  # |  modi57            |


  Scenario: As a user not logged in (but with an account and logged into github) I access chapters links in homepage and sign up as a student.
  	Given I am on the codebar homepage
  	When I click on a chapter
  	And I click on sign up
  	And choose to sign up as a student
    And I authorize codebar to access my github
  	Then the website will sign me in and take me to the dashboard
