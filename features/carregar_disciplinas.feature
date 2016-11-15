Feature: User can load all disciplines status
	In order to manage my progress
	As a user
	I want to have a way to mark disciplines as done

	Scenario: Load disciplines already done

		Given I am on the Lista de disciplinas si with nusp 1234567
        Then ACH2001 must be checked
        And ACH2025 must be checked
        And ACH2147 must be unchecked