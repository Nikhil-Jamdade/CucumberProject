Feature: THis feature will be used to test the login functionality of Simplilearn application

  #Background:
  #Given I have launched the application
  #And I have clicked on Login Link
  Scenario: Validate the Login success scenario
    Given I have launched the application
    And I have clicked on Login Link
    When I enter username
    And I enter password
    And I click on Login button
    Then I should land on home page

  @Sanity
  Scenario: Validate the Login failure scenario
    Given I have launched the application
    And I have clicked on Login Link
    When I enter username
    And I enter password
    And I click on Login button
    Then I should get the error message

  @WIP
  Scenario: Validate the Login failure scenario using parameters
    Given I have launched the application
    And I have clicked on Login Link
    When I enter username as "abc@xyz.com"
    And I enter password as "Abc@1234"
    And I click on Login button
    Then I should get the error message as "The email or password you have entered is Invalid."

  @Sanity
  Scenario Outline: Validate the Login failure scenario using parameters
    Given I have launched the application
    And I have clicked on Login Link
    When I enter username as "<UserName>"
    And I enter password as "<Password>"
    And I click on Login button
    Then I should get the error message as "<Error>"

    Examples: 
      | UserName    | Password | Error                                              |
      | pqr@xyz.com | Pqr@1234 | The email or password you have entered is Invalid. |
      | xyz@abc.com | Xyz@1234 | The email or password you have entered is Invalid. |
