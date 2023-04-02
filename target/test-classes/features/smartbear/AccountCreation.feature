@regression
Feature: Testing the account creation and validation SmartBear

  Scenario Outline:Validation Account creation for different input
    Given User provides username,password and click Order Button
    When User provides the '<product>','<quantity>' for product information
    And User provides '<name>', '<street>', '<city>','<state>','<zip>' for address information
    And User provides '<cardType>','<cardNumber>','<expirationDate>' for payment information
    Then User click process button and validate '<message>'
    And User validates all information '<name>', '<product>','<quantity>', '<street>','<city>','<state>','<zip>','<cardType>','<cardNumber>','<expireDate>' from table
    Examples:
      | product     | quantity | name   | street | city    | state   | zip    | cardType         | cardNumber | expirationDate | message                                |
      | MyMoney     | 4        | Ahmet  | midway | Chicago | IL      | 60345  | VISA             | 123345567  | 06/28          | New order has been successfully added. |
      | FamilyAlbum | 7        | Mehmet | ayse   | Houston | TX      | 60365  | MASTERCARD       | 12356787   | 02/26          | New order has been successfully added. |
      | ScreenSaver | 2        | Ivana  | Mahmut | MIAMI   | Florida | 340023 | AMERICAN EXPRESS | 12234567   | 08/24          | New order has been successfully added. |


#  Scenario Outline:Validation Account creation for different input
#    Given User provides username,password and click Order Button
#    When User provides the '<product>','<quantity>' for product information
#    And User provides '<name>', '<street>', '<city>','<state>','<zip>' for address information
#    And User provides '<cardType>','<cardNumber>','<expirationDate>' for payment information
#    Then User click process button and validate '<message>'
#    And User validates all information '<name>', '<product>','<quantity>', '<street>','<city>','<state>','<zip>','<cardType>','<cardNumber>','<expireDate>' from table
#    Examples:
#      | product     | quantity | name   | street | city    | state   | zip    | cardType         | cardNumber | expirationDate | message                                |
#      | MyMoney     | 4        | Ahmet  | midway | Chicago | IL      | 60345  | VISA             | 123345567  | 06/28          | New order has been successfully added. |
#      | FamilyAlbum | 7        | Mehmet | ayse   | Houston | TX      | 60365  | MASTERCARD       | 12356787   | 02/26          | New order has been successfully added. |
#      | ScreenSaver | 2        | Ivana  | Mahmut | MIAMI   | Florida | 340023 | AMERICAN EXPRESS | 12234567   | 08/24          | New order has been successfully added. |
#





  #First Create your hook class and add your @Before and @After
#Read username,password,url from configuration.properties
#Start writing your test case in feature file
#Start creating your Page Object model
  #Login Page  MainPage OrderPage ViewOrderPage
#Create your Runner class and get the all snips from RUNNER CLASS
#Put the snips in step definition class
  #ProductCreationStepDef(you can call it like that if you want)
#Start implementing your page classes
#Login Page
   #-->username -->Tester   password -->test  LoginButton
#MainPage
   #orderButton   viewAllOrdersButton
#OrderPage
   #All the red dots boxes and also state
   #Validation message
#ViewOrderPage
   #Validate all the information from data table
   #You can think of Arrays.aslist(not first and last one need to be validated
