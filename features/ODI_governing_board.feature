Feature: The governing board section on governance page
  As a User
  in order to trust ODI
  I need to know the governing board

  Background:

    Given the following governing board exist
      | name                | description                                                                                                              | image        |
      | Bart Bartoletti     | I’ve got an idea–an idea so smart that my head would explode if I even began to know what I’m talking about.             | seed_secretariat.jpg |

  Scenario: User can view governing board information on board of trustees page
      Given I am on the board_of_trustees page
      Then I should see "seed_govboard.jpg" image
      Then I should see the text "Governing Board"
      Then show me the page
