Feature: User can enter in lista de cursos
	In order to see the courses avaliable
	As a user
	I want to be able to enter the lista de cursos page

	Scenario: Enter in Lista de Cursos page

		Given I am on the Jubilator Pro home page
		When I follow Lista de Cursos
		Then I should be on Lista de Cursos page
        And I should see curso Sistemas de Informação
        And I should see curso Gestão Ambiental
        
    Scenario: Enter in a curso
      
        Given I am on the Lista de Cursos page
        When I follow Sistemas de Informação
        Then I should see disciplina Engenharia de Sistemas de Informação I