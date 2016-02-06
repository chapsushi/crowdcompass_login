Feature: Facebook Social Login
	Scenario: As a visitor I can log into the Crowdcompass app with my existing Facebook account
		Given I navigate to "www.crowdcompass.com"
    	When I click on element having id "Login"
    	And I click on element having id "Facebook"
    	Then I wait for 5 sec
	    When I enter "facebook_user" into input field having id "email"
	    And I enter "facebook_password" into input field having id "pass"
	    And I click on element having id "u_0_2"
	    And I wait for 5 sec
	    Then I am registered and returned to the crowdcompass interface as a logged in user

Feature: Google Social Login
	Senario: As a visitor I can log into the Crowncompass app with my existing Google account
		Given I navigate to "www.crowdcompass.com"	    
		When I click on element having id "Login"
		And I click on element having id "Google"
		Then I wait for 5 sec
		When I enter "gmail_address" into input field having id "email"
		And I click on element having id "next"
		And I enter "gmail_password" into input field having id "pass"
		And I click on element having id "signin"
		And I wait for 5 sec
		And I click on element having id "Allow"
		Then I m registered and returned to the crowdcompass interface as a logged in user
