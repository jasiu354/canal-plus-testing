Feature: Search


  @searchTest @missingWords @last
  Scenario: Check logging in
    Given A user navigates to HomePage
    And I click on accept button
    And I wait for "2" seconds
    And I log in
    And I click on search icon
    And I enter "off" in search input

  @searchTest @missingLetters @tylkotentest
  Scenario Outline: Search with different inputs
    Given A user navigates to HomePage
    And I click on accept button
    And I wait for "2" seconds
    And I click on search icon
    And I enter "<title>" in search input
    And I wait for "5" seconds
    Then Movie is found "<correct_title>"

    Examples:
      | title | correct_title |
      | Przed północą | Przed północą |
      | Ciche miejsce 2 | Ciche miejsce 2 |
      | Oficer i szpieg | Oficer i szpieg |
      | 1800 Gramów | 1800 Gramów |

#  @search @search_01
#  Scenario Outline: Search cucumber studio
#    Given A user navigates to HomePage "fr"
#    When a user searches for "cucumber studio"
#    Then "CucumberStudio" is displayed in the first "<nbOfResultsToSearch>" results

#    Examples:
#      | nbOfResultsToSearch |
#      | 3 |
