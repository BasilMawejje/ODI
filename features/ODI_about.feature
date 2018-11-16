Feature: The about page
  As a User
  in order to know about ODI
  I need to visit the about page

  Scenario: User can view about information on about page
      Given I navigate to the about page
      And show me the page
      Then I should see "odi_logo.png" image
      Then I should see the title "About Us"
      Then I should see the text "According to the Joint United Nations Program on HIV/AIDS (UNAIDS)"
      And I should see the text "One Dollar HIV Initiative &copy"
      And show me the page
