Feature: Different Browsers

  @Windows @Mac @default
  Scenario: Chrome browser
    Given I run a site in "Chrome"
    And I click on accept button
    Then I verify if site is correctly loaded

  @Windows @default
  Scenario: Edge browser
    Given I run a site in "Edge"
    And I click on accept button
    Then I verify if site is correctly loaded

  @Windows @Mac
  Scenario: Firefox browser
    Given I run a site in "Firefox"
    And I click on accept button
    Then I verify if site is correctly loaded

  @Windows @Mac
  Scenario: Opera browser
    Given I run a site in "Opera"
    And I click on accept button
    Then I verify if site is correctly loaded

  @Mac
  Scenario: Safari browser
    Given I run a site in "Safari"
    And I click on accept button
    Then I verify if site is correctly loaded