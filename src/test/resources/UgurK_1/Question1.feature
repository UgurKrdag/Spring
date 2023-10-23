Feature: Date of Birth Validation

  Scenario: User provides valid Date of Birth
    Given the user provides First Name "Ugur", Last Name "Karadag", Email "karadag.ugur@example.com"
    When the user enters a valid Date of Birth for a user aged 19 or older
    Then the form submission should be allowed

  Scenario: User provides invalid Date of Birth (age < 19)
    Given the user provides First Name "Ugur", Last Name "Karadag", Email "karadag.ugur@example.com"
    When the user enters a Date of Birth for a user under 19 years old
    Then the form submission should be blocked, and an error message should be displayed

  Scenario: User provides incomplete Date of Birth
    Given the user provides First Name "Ugur", Last Name "Karadag", Email "karadag.ugur@example.com"
    When the user leaves the Date of Birth field empty
    Then the form submission should be blocked, and an error message should be displayed

  Scenario: User provides non-numeric Date of Birth
    Given the user provides First Name "Ugur", Last Name "Karadag", Email "karadag.ugur@example.com"
    When the user enters a non-numeric value in the Date of Birth field
    Then the form submission should be blocked, and an error message should be displayed

  Scenario: User provides future Date of Birth
    Given the user provides First Name "Ugur", Last Name "Karadag", Email "karadag.ugur@example.com"
    When the user enters a future Date of Birth
    Then the form submission should be blocked, and an error message should be displayed

  Scenario: User provides valid Date of Birth with valid First Name, Last Name, and Email
    Given the user provides valid First Name, Last Name, and Email
    When the user enters a valid Date of Birth for a user aged 19 or older
    Then the form submission should be allowed

  Scenario: User provides valid Date of Birth with invalid First Name
    Given the user provides invalid First Name, valid Last Name, and valid Email
    When the user enters a valid Date of Birth for a user aged 19 or older
    When the user enters a First Name with less than two characters or more than 25 characters
    Then the form submission should be blocked, and an error message should be displayed for the invalid First Name

  Scenario: User provides valid Date of Birth with invalid Last Name
    Given the user provides valid First Name, invalid Last Name, and valid Email
    When the user enters a valid Date of Birth for a user aged 19 or older
    When the user enters a Last Name with less than two characters or more than 25 characters
    Then the form submission should be blocked, and an error message should be displayed for the invalid Last Name

  Scenario: User provides valid Date of Birth with invalid Email
    Given the user provides valid First Name, valid Last Name, and invalid Email
    When the user enters a valid Date of Birth for a user aged 19 or older
    When the email does not have an international validation rule
    Then the form submission should be blocked, and an error message should be displayed for the invalid Email
