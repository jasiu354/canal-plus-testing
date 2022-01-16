Feature: Home page


  @home_page @log_in_test
  Scenario: Check logging in
    Given A user navigates to HomePage
    And I click on accept button
    And I wait for "2" seconds
    And I log in
    Then I wait for logo to be displayed