Feature: The secretariat section on governance page
  As a User
  in order to trust ODI
  I need to know the secretariat

  Background:

    Given the following secretariats exist
      | name             | description                                                                                     | image        |
      | Vernie Weber     | A degenerate, am I? Well, you are a festisio! See? I can make up words too, sister.             | seed_secretariat.jpg |

  Scenario: User can view secretariats information on board of trustees page
      Given I am on the board_of_trustees page
      Then I should see "seed_secretariat.jpg" image
      Then I should see the text "Secretariat"
      Then show me the page
