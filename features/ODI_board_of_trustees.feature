Feature: The board of trustees page
  As a User
  in order to trust ODI
  I need to know the board of trustees

  Background:

    Given the following board_of_trustees exist
      | name             | description                            | image        |
      | Shondra Donnelly | Joe, gag on my fat dauber.             | seed_bot.jpg |

  Scenario: User can view board of trustees information on board of trustees page
      Given I navigate to the board_of_trustees page
      Then I should see "seed_bot.jpg" image
      Then I should see the text "Trustees"
      Then show me the page
