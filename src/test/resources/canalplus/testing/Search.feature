Feature: Search


  @searchTest @correctTitles
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
    And I wait for "15" seconds
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


  @searchTest @polishChars @missing
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
      | Przed połnocą | Przed północą |
      | Przed północa | Przed północą |
      | Przed połnoca | Przed północą |
      | 1800 Gramow | 1800 Gramów |
      | Miasto Szpiegow | Miasto Szpiegów |
      | Sceny z zycia małżeńskiego | Sceny z życia małżeńskiego |
      | Sceny z zycia malżeńskiego | Sceny z życia małżeńskiego |
      | Sceny z zycia malzeńskiego | Sceny z życia małżeńskiego |
      | Sceny z życia malżeńskiego | Sceny z życia małżeńskiego |
      | Sceny z życia małzeńskiego | Sceny z życia małżeńskiego |
      | Sceny z życia małżenskiego | Sceny z życia małżeńskiego |
      | Sceny z zycia malzenskiego | Sceny z życia małżeńskiego |


  @searchTest @polishChars @additional
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
      | Przęd północą | Przed północą |
      | Przed półńocą | Przed północą |
      | Cichę miejsce 2 | Ciche miejsce 2 |
      | Oficer i szpieg | Oficer i szpieg |
      | 1800 Grąmów | 1800 Gramów |
      | Miastó Szpiegów | Miasto Szpiegów |
      | Sceny z życią małżeńskiego | Sceny z życia małżeńskiego |
      | Misją w High Ground | Misja w High Ground |


  @searchTest @missingLetters @firstWord
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
      | północą | Przed północą |
      | miejsce 2 | Ciche miejsce 2 |
      | i szpieg | Oficer i szpieg |
      | Gramów | 1800 Gramów |
      | Szpiegów | Miasto Szpiegów |
      | z życia małżeńskiego | Sceny z życia małżeńskiego |
      | w High Ground | Misja w High Ground |


  @searchTest @missingLetters @lastWord
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
      | Przed | Przed północą |
      | Ciche miejsce | Ciche miejsce 2 |
      | Oficer i | Oficer i szpieg |
      | 1800 | 1800 Gramów |
      | Miasto | Miasto Szpiegów |
      | Sceny z życia | Sceny z życia małżeńskiego |
      | Misja w High | Misja w High Ground |


  @searchTest @missingLetters @randomLetter
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
      | Przed półocą | Przed północą |
      | Prze północą | Przed północą |
      | Przed półnoą | Przed północą |
      | Ciche miejce 2 | Ciche miejsce 2 |
      | Cich miejsce 2 | Ciche miejsce 2 |
      | Oficer szpieg | Oficer i szpieg |
      | Ofice i szpieg | Oficer i szpieg |
      | Oficer i zpieg | Oficer i szpieg |
      | 180 Gramów | 1800 Gramów |
      | 1800 Gamów | 1800 Gramów |
      | Miato Szpiegów | Miasto Szpiegów |
      | Sceny z życia małżeńskiego | Sceny z życia małżeńskiego |
      | Sceny życia małżeńskiego | Sceny z życia małżeńskiego |
      | Sceny z życia ałżeńskiego | Sceny z życia małżeńskiego |
      | Misja High Ground | Misja w High Ground |
      | Misja w Hih Ground | Misja w High Ground |


  @searchTest @missingLetters @lastLetter
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
      | Przed północ | Przed północą |
      | Ciche miejsce | Ciche miejsce 2 |
      | Oficer i szpie | Oficer i szpieg |
      | 1800 Gramó | 1800 Gramów |
      | Miasto Szpiegó | Miasto Szpiegów |
      | Sceny z życia małżeńskieg | Sceny z życia małżeńskiego |
      | Misja w High Groun | Misja w High Ground |


  @searchTest @missingLetters @lastLetter2
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
      | Przed półno | Przed północą |
      | Ciche miejsc | Ciche miejsce 2 |
      | Oficer i szpi | Oficer i szpieg |
      | 1800 Gram | 1800 Gramów |
      | Miasto Szpieg | Miasto Szpiegów |
      | Sceny z życia małżeńskie | Sceny z życia małżeńskiego |
      | Misja w High Grou | Misja w High Ground |


  @searchTest @missingLetters @lastLetterEachWord
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
      | Prze północ | Przed północą |
      | Cich miejsc 2 | Ciche miejsce 2 |
      | Ofice i szpie | Oficer i szpieg |
      | 180 Gramó | 1800 Gramów |
      | Miast Szpiegó | Miasto Szpiegów |
      | Scen z życi małżeńskieg | Sceny z życia małżeńskiego |
      | Misj w Hig Groun | Misja w High Ground |