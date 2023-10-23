Feature: Related to the Date of Birth field, there are several other aspects and functionalities
  that need to be tested before the change can be released to live

  Scenario: Test that all mandatory fields (First Name, Last Name, Email, and Date of Birth) are enforced
  and the form cannot be submitted without filling them out

  Scenario: Test that appropriate error messages are displayed for each validation scenarios
  such as missing fields, invalid formats, etc. And ensure error messages are clear and user-friendly

  Scenario: Test the form with various valid email formats to ensure they are accepted
  Test the form with various invalid email formats to ensure they are rejected
  Test international email addresses to ensure they are accepted if the validation rule includes international addresses

  Scenario: Verify that error messages are displayed near the respective fields where the errors occurred
  Confirm that error messages are displayed in a way that is noticeable and does not confuse users

  Scenario: Test the form's loading time to ensure it loads quickly and does not cause delays for users

  Scenario: Test the form on various web browsers (Chrome, Firefox, Safari, Edge, etc.) to ensure compatibility
  Verify that the form functions correctly and displays consistently across different browsers