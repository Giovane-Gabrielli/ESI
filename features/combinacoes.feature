Feature: Tela de Combinações
	As a developer
	I want to usuários possam entrar na Tela de Combinações
	So that eles podem ver combinações de disciplinas
	
	Scenario: Ver Combinações
		Given I am on the Jubilator Pro home page
		When I follow Combinações
		Then I should be Combinações home page
		And I should see Informações e links
		And I should see Distribuição da combinação
		#And I should see <<<< escolha suas combinações aqui
		And I should see campus
		And I should see Bem Vindo
		And I should see Jubilator Pro
		And I should see Home
		And I should see Meu Curso
		And I should see Disciplina
		And I should see Grade do Semestre
		And I should see Disciplinas já aprovadas
		And I should see Disciplinas que faltam cursar
		