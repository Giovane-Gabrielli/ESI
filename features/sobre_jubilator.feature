Feature: Tela Sobre Jubilator
	As a developer
	I want to usuários possam entrar na Tela Sobre Jubilator
	So that eles podem ver informações sobre Jubilator
	
	Scenario: Ver Sobre Jubilator
		Given I am on the Jubilator Pro page
		When I go to Sobre Jubilator
		Then I should be on Sobre Jubilator page
		And I should see Informações sobre o Jubilator Pro
        And I should see Problema proposto - motivo do projeto
        And I should see Contato
        And I should see Para começar, é preciso se cadastrar e fazer login no sistema. Então será apresentada a interface de apresentação.
        And I should see A interface Lista de disciplinas apresentará uma lista com as disciplinas do curso escolhido.
        And I should see Você será direcionado para o site da USP para ver a grade do curso.
        And I should see Aqui serão apresentadas as combinações possíveis para o usuário, visando maximização bna obtenção de créditos e minimização do tempo de curso.
        And I should see Apresentará dados de contato do projeto Jubilator Pro.
        And I should see Você será redirecionado para o site da Escola de Artes, Ciências e Humanidades da Universidade de São Paulo - EACH-USP.
        And I should see Você será redirecionado para essa página.
        