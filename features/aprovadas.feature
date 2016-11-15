Feature: User can enter in selecionar disciplina já aprovada
	In order to control my approved disciplines
	As a user
	I want to be able to manage and mark a discipline as approved

	Scenario: Enter in Disciplinas já aprovadas page

		Given I am on the Jubilator Pro home page
		When I follow Lista de Disciplinas
		Then I should be on Lista de disciplinas page
        And I should see disciplina Introdução à Programação
        And I should see disciplina Laboratório de Bancos de Dados

    Scenario: Limpar seleção de disciplina já aprovada

		Given I am on the Lista de disciplinas si page
		Then I should be on Lista de disciplinas page
        And I should see disciplina Introdução à Programação
        And I should see disciplina Laboratório de Bancos de Dados
        When I select ACH2001
        And I select ACH2025
        And I click on Limpar
        Then ACH2001 must not be checked
        And ACH2025 must not be checked