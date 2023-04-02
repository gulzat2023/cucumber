Feature: Testing Google Search Functionality
  #is a general description
  Scenario: Happy Path(positive) Testing or Search
    #is all about test cases
    Given User navigates to the Google
    When User searches for CodeFish
    Then User gets more than ten links on the first page

Scenario: Pappy Path(positive Testing Result from Search
  Given User navigates to the Google
  When User searches for Kyrgyz Food in USA
  Then User validates the result

  Scenario: Pappy Path(positive) Testing SearchTime from Search
    Given User navigates to the Google
    When User searches for Turkish Baklava
    Then User validates search is done less than one second