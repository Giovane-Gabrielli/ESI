Feature: User can load all disciplines status
	In order to manage my progress
	As a user
	I want to have a way to mark disciplines as done

	Scenario: Load disciplines already done

		Given I am on the Lista de disciplinas SI page
        When I fill in nusp with 1234567
        And I click on Carregar
        #Then I should get ACH2001A
        #And I should get ACH2025A
        Then ACH2001 must be checked
        And ACH2025 must be checked
        And ACH2023 must be checked