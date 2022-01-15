Feature: Search


  @searchTest @correct_titles
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
      | Miasto Szpiegów | Miasto Szpiegów |
      | Sceny z życia małżeńskiego | Sceny z życia małżeńskiego |
      | Misja w High Ground | Misja w High Ground |


  @searchTest @spaces @doubled
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
      | Przed  północą | Przed północą |
      | Ciche  miejsce 2 | Ciche miejsce 2 |
      | Ciche miejsce  2 | Ciche miejsce 2 |
      | Ciche  miejsce  2 | Ciche miejsce 2 |
      | Oficer  i szpieg | Oficer i szpieg |
      | Oficer i  szpieg | Oficer i szpieg |
      | Oficer  i  szpieg | Oficer i szpieg |
      | 1800  Gramów | 1800 Gramów |
      | Miasto  Szpiegów | Miasto Szpiegów |
      | Sceny  z życia małżeńskiego | Sceny z życia małżeńskiego |
      | Sceny z  życia małżeńskiego | Sceny z życia małżeńskiego |
      | Sceny z życia  małżeńskiego | Sceny z życia małżeńskiego |
      | Sceny  z  życia  małżeńskiego | Sceny z życia małżeńskiego |
      | Misja  w High Ground | Misja w High Ground |
      | Misja w  High Ground | Misja w High Ground |
      | Misja w High  Ground | Misja w High Ground |
      | Misja  w  High Ground | Misja w High Ground |


  @searchTest @spaces @missing
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
      | Przedpółnocą | Przed północą |
      | Cichemiejsce 2 | Ciche miejsce 2 |
      | Ciche miejsce2 | Ciche miejsce 2 |
      | Cichemiejsce2 | Ciche miejsce 2 |
      | Oficeri szpieg | Oficer i szpieg |
      | Oficer iszpieg | Oficer i szpieg |
      | Oficeriszpieg | Oficer i szpieg |
      | 1800Gramów | 1800 Gramów |
      | MiastoSzpiegów | Miasto Szpiegów |
      | Scenyz życia małżeńskiego | Sceny z życia małżeńskiego |
      | Sceny zżycia małżeńskiego | Sceny z życia małżeńskiego |
      | Sceny z życiamałżeńskiego | Sceny z życia małżeńskiego |
      | Scenyzżycia małżeńskiego | Sceny z życia małżeńskiego |
      | Sceny zżyciamałżeńskiego | Sceny z życia małżeńskiego |
      | Scenyzżyciamałżeńskiego | Sceny z życia małżeńskiego |
      | Misjaw High Ground | Misja w High Ground |
      | Misja wHigh Ground | Misja w High Ground |
      | Misja w HighGround | Misja w High Ground |
      | MisjawHigh Ground | Misja w High Ground |
      | Misja wHighGround | Misja w High Ground |
      | MisjawHighGround | Misja w High Ground |