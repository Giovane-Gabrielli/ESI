Feature: User can enter in selecionar disciplina já aprovada
	In order to control my approved disciplines
	As a user
	I want to be able to manage and mark a discipline as approved

	Scenario: Enter in Disciplinas já aprovadas page

		Given I am on the Jubilator Pro home page
		When I follow selecionar disciplinas já cursadas
		Then I should be on the Disciplinas já aprovadas page
    And I should see disciplina IA
    And I should see disciplina AED

  Scenario: Limpar seleção de disciplina já aprovada

		Given I am on the Disciplinas já aprovadas page
		Then I should be on the Disciplinas já aprovadas page
    And I should see disciplina IA
    And I should see disciplina AED
    When I select IA
    And I select AED
    And I click on Limpar
    Then IA must not be checked
    And AED must not be checked

  Scenario: Ir para a página das disciplinas de SI a partir da página /aprovadas

		Given I am on the Disciplinas já aprovadas page
		Then I should be on the Disciplinas já aprovadas page
    And I should see disciplina IA
    And I should see disciplina AED
    When I follow Ver todas as matérias de SI
    Then I must be redirect to Disciplinas de SI