@regression2
Feature: Testing the account creation and validation SmartBear

  Scenario:Validation Account creation for different input
    Given User provides username,password and click Order Button
    When User provides the product,quantity for product information
      | product  | MyMoney |
      | quantity | 4       |

    And User provides name,street, city,state,zip for address information
      | name   | Ahmet   |
      | street | midway  |
      | city   | Chicago |
      | state  | IL      |
      | zip    | 60345   |
    And User provides cardType,cardNumber,expirationDate for payment information
      | cardType       | VISA      |
      | cardNumber     | 123345567 |
      | expirationDate | 06/28     |

    Then User click process button and validate message
      | New order has been successfully added. |
#    And User validates all information '<name>', '<product>','<quantity>', '<street>','<city>','<state>','<zip>','<cardType>','<cardNumber>','<expireDate>' from table


#    Examples:
#      | product     | quantity | name   | street | city    | state   | zip    | cardType         | cardNumber | expirationDate | message                                |
#      | MyMoney     | 4        | Ahmet  | midway | Chicago | IL      | 60345  | VISA             | 123345567  | 06/28          | New order has been successfully added. |
#