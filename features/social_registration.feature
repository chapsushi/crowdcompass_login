Feature: Facebook Social Login
	Scenario: As a visitor I can log in to the Crowdcompass app with my existing Facebook account
		
		Given I navigate to "www.crowdcompass.com"
    	When I click on element having id "Login"
    	And I click on element having id "Facebook"
    	And I wait for 5 sec
	    When I enter "facebook_user" into input field having id "email"
	    And I enter "facebook_password" into input field having id "pass"
	    And I click on element having id "u_0_2"
	    And I wait for 5 sec
	    When I sign in to my email account
	    And I open the confirmation email sent from crowdcompass
	    And I click on element having name "Confirm account"
	    Then I am registered and returned to the crowdcompass interface as a logged in user

Feature: Google Social Login
	Senario: As a visitor I can log in to the Crowdcompass app with my existing Google account
		
		Given I navigate to "www.crowdcompass.com"	    
		When I click on element having id "Login"
		And I click on element having id "Google"
		And I wait for 5 sec
		When I enter "gmail_address" into input field having id "email"
		And I click on element having id "next"
		And I enter "gmail_password" into input field having id "pass"
		And I click on element having id "signin"
		And I wait for 5 sec
		And I click on element having id "Allow"
		Then I am registered and returned to the crowdcompass interface as a logged in user

Feature: LinkedIn Social Login
	Scenario: As a visitor I can log in to the Crowdcompass app with my existing LinkedIn account

		Given I navigate to "https://eventcenter.crowdcompass.com"
		When I click on element having id "Login"
		And I click on element having id "LinkedIn"
		And I wait for 5 sec
		And I enter "email_address" into input field having id "session_key-oauthAuthorizeForm"
		And I enter "password" in to input field having id "session_password-oauthAuthorizeForm"
		And I click on element having id "authorize"
		And I wait for 5 sec
		Then I am registered and returned to the crowdcompass interface as a logged in user

Feature: Twitter Social Login
	Scenario: As a visitor I can log in to 	the crowdcompass app with my existing Twitter account

		Given I navigate to "https://eventcenter.crowdcompass.com"
		When I click on element having id "Login"
		And I click on element having id "Twitter"	
		And I wait for 5 sec
		And I enter username or email in input field having id "username_or_email"
		And I enter password in input field having id "password"
		And I click on element having id "allow"
		And I wait for 5 sec
		Then I am registered and returned to the crowdcompass interface as a logged in user