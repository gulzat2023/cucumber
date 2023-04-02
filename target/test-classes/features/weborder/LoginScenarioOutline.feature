@smoke

  Feature: Testing Login Functionality for WebOrder

    Scenario Outline:
      When User provides '<username>' and '<password>' for WebOrder
      Then User validates the '<errorMessage>' from homepage

      Examples:
      |username|password|errorMessage
      |guest1@microworks.com        | 34524       |Sign in Failed|
      | ahmet@microworks.com       |  Guest1!      |Sign in Failed|

      Scenario Outline:  second version
        When User provides '<username>' and '<password>' for WebOrder
        Then User validates the 'Sign in Failed' from homepage
      Examples:
        |username                    | password  |
        |guest1@microworks.com       | 34524    |
        |ahmet@microworks.com        | Guest1! |