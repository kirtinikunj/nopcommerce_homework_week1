Feature: Nopcommerce Registration

  As a user
  I want to check Register functionality of nopcommerce

  Background: I am on nopcommerce registration page
    Given I open the Google Crome Browser
    When  I open the URL http://demo.nopcommerce.com/register
    Then  I am on nopcommerce Registeration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When I enter first name "<First Name>"
    And  I enter last name "<Last Name>"
    And  I enter Email address "<Email>"
    And  I enter Password "<Password>"
    And  I enter Confirm Password "<Confirm Password>"
    And  Click on Register button
    Then I can see an error message "<Error Message>"
    And  I am not able to register

    Examples:

      | First Name | Last Name | Emali            | Password | Confirm Password | Error Message                              |
      | " "        | bakshi    | bakshi@gmail.com | 456897   | 456897           | please enter first name                    |
      | Rohan      | " "       | bakshi@gmail.com | 456897   | 456897           | please enter last name                     |
      | Rohan      | bakshi    | " "              | 456897   | 456897           | please enter valid email                   |
      | Rohan      | bakhsi    | bakshi@gmail.com | " "      | 456897           | password is required                       |
      | Rohan      | bakshi    | bakshi@gmail.com | 456897   | " "              | confirm password is required               |
      | Rohan      | bakshi    | bakshi@gmail.com | 456897   | 45689            | password and confirm password do not match |
      | Rohan      | bakshi    | bakshi@gmail.com | 45689    | " "              | minimum 6 character password is required   |
      | " "        | " "       | " "              | " "      | " "              | mandatory (*) fields are required          |

  Scenario: I should be able to select anyone radio button from gender label of personal details section
    Given I am on gender lable of your personal detail section
    When I select "Male" radio button
    And  I select "Female" radio button
    Then I am able to select any one radio button

  Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of Birth field
    Given I am on Date od Birth field of your personal detail section
    When  I select day "<Day>"
    And   I select month "<Month>"
    And   I select year "<Year>"
    Then  I am able to select Day, Month and Year from drop down list

    Examples:

      | Day | Month    | Year |
      | 11  | November | 1989 |

    Scenario: I should be able to check and uncheck the Newsletter box on option section
      Given I am on Newsletter label on option section
      When I click on Newsletter checkbox
      And  I again click on Newsletter chechbox
      Then I was able to check and uncheck the box next to Newsletter label

      Scenario: I should be able to register with valid mandatory (*) field data on registeration page
        When I enter First Name "Rohan"
        And I enetr Last Name "Bakshi"
        And I enter Email "bakshi@gmail.com"
        And I enter Password "456897"
        And I enetr Confirm Password "456897"
        And I click on Register button
        Then I was able to register sucessfully
        