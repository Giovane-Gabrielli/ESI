Feature: Presenting all Aluno infos
    Como um usuário
    Para me organizar melhor e ter maior controle sobre a minha grade
    Gostaria de poder indicar a minha disponibilidade de fazer matérias em qualquer período e em qualquer combinação: manhã, tarde e noite
    
    
	Scenario: Enter in Aluno page

		Given I am on the Jubilator Pro home page
		When I follow Aluno
		Then I should be on Aluno page
		
		
	Scenario: Enter in Aluno page and get the previously infos

		Given I am on the Jubilator Pro home page
		When I follow Aluno
		Then I should be on Aluno page
		When I fill in nusp with 1234567
		And I click on carregar
		And manha must be checked
		And tarde must be checked
		And noite must be unchecked
		
		
	Scenario: Enter in Aluno page and create infos to a new Aluno

		Given I am on the Aluno page
		When I fill in nusp with 2525252
		And I check noite
		And I click on salvar
		#Then A message Dados salvos com sucesso must appear
		Given I am on the Aluno page
		When I fill in nusp with 2525252
		And I click on carregar
		Then noite must be checked
		