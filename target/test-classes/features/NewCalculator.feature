Feature: This feature will allow you do to all the calculator operations

  Scenario Outline: To add two numbers and validate the results are coming fine using parameter
    Given I have two numbers <num1> and <num2>
    When I add those two numbers magic will happen
    Then I should get the result as <result>

    Examples: 
      | num1 | num2 | result |
      |   -5 |   -7 |    -12 |
      |    4 |    4 |      8 |
      |   15 |   12 |     27 |

  Scenario: This sceanrio will validate adddition of multiple numbers
    Given I have below numbers
      | 6 |
      | 5 |
      | 3 |
      | 8 |
      | 2 |
    When I add those numbers
    Then I should get the result as 24

  Scenario: To calculate the total bill amount
    Given I want to buy below items
      | Coffee | 20 |
      | Burger | 50 |
    When I purchase them
    Then I should get bill amount as 70

  Scenario: To calculate the total bill amount using quantity
    Given I want to buy below items in given quantity
      | Coffee      | 2 | 20 |
      | Burger      | 3 | 50 |
      | GarlicBread | 1 | 15 |
    Then I should get bill amount as 205
