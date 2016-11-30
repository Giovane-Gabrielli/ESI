Feature: User can load all disciplines status
	In order to manage my progress
	As a user
	I want to have a way to mark disciplines as done

	Scenario: Load disciplines already done

		Given I am on the Lista de disciplinas si with nusp 1234567
        Then ACH2001 must be checked
        And ACH2025 must be checked
        And ACH2147 must be unchecked
        
        
    Scenario: Save disciplines already done

		Given I am on the Lista de disciplinas si page
        Then ACH0021 must be unchecked
        And ACH0041 must be unchecked
        When I select ACH0021
        And I select ACH0041
        And I fill in nusp with 1234567
        And I click on Gravar
		Given I am on the Lista de disciplinas si with nusp 1234567
        Then ACH0021 must be checked
        And ACH0041 must be checked