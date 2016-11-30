	# Como um usuário
	# Para me organizar melhor e ter maior controle sobre a minha grade
	# Gostaria de poder indicar a minha disponibilidade de fazer matérias em qualquer período e em qualquer combinação: manhã, tarde e noite

Feature: Presenting all Aluno infos
	Como aluno
	Para utilizar o sistema
	Gostaria de poder criar um novo usuário no sistema, informando os dados necessários
	
	Scenario: Enter in Aluno page

		Given I am on the Jubilator Pro home page
		When I follow Aluno
		Then I should be on Aluno page
		
		
	Scenario: Enter in Aluno page and get the previously infos

		Given I am on the Aluno page with nusp 1234567
		Then manha must be checked
		And tarde must be checked
		
		
	Scenario: Enter in Aluno page and create infos to a new Aluno

		Given I am on the Aluno page
		When I fill in nusp with 2525252
		And I fill in nome with Renan
		And I fill in ano_de_entrada with 2010
		And I fill in email with renan@usp.br
		And I choose 1
		And I check noite
		And I click on criar
		Given I am on the Aluno page with nusp 2525252
		Then noite must be checked