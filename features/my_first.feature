Feature: Add numbers
  As a User I should be able to perform calculations

  Scenario: Add numbers
    When I fill in "left" with "15"
    And I fill in "right" with "10"
    And I touch "add"
    Then I should see "25"

  Scenario: Subtract numbers
  	When I subtract 15 from 38
	  Then I should see "23" as result



