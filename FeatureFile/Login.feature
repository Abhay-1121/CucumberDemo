Feature: User Login

#  @sanity @regression
#  Scenario: Successful Login
#    Given the user is on the nopCommerce login page
#    When the user enters valid credentials (username: "test1@gmail.com", password: "test@123")
#    And the user clicks on the Login button
#    Then the user should be redirected to the My Account page
#    And the user should see a welcome message

  @regression
  Scenario Outline: Login Data Driven
    Given the user navigates to login page
    When user enters email as "<email>" and password as "<password>"
    And the user clicks on the Login button
    Then the user should be redirected to the MyAccount Page

    Examples:
      | email                	    | password |
      | pavanol@gmail.com 	      | test123  |
      | pavanoltraining@gmail.com | test@123 |
