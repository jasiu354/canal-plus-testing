Feature: Search


  @home_page @searchTest
  Scenario: Check logging in
    Given A user navigates to HomePage
    And I click on accept button
    And I wait for "2" seconds
    And I log in
    And I click on search icon
    And I enter "off" in search input

#  @search @search_01
#  Scenario Outline: Search cucumber studio
#    Given A user navigates to HomePage "fr"
#    When a user searches for "cucumber studio"
#    Then "CucumberStudio" is displayed in the first "<nbOfResultsToSearch>" results

#    Examples:
#      | nbOfResultsToSearch |
#      | 3 |
