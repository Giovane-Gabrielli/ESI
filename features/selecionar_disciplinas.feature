Feature: User can enter in the select discipline already approved
	In order to control my approved disciplines
	As a user
	I want to be able to manage and mark a discipline as approved

	Scenario: Enter in the select discipline already approved page

		Given I am on the Jubilator Pro home page
		When I follow selecionar disciplinas já cursadas
		Then I should be on the Disciplinas já aprovadas page
    And I should see disciplina IA
    And I should see disciplina AED