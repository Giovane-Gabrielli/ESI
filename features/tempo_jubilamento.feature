Feature: User can know the time to be jubilado
  In order to know the time to be jubilado
  As a user
  I want to warned how many time I have to complete the course
  
  Scenario: Enter the start year and get the max time to complete
    
    Given I am on the Jubilator Pro home page
    When I fill in ano_entrada with 2010
    And I click on Calcular
    Then I should see Você terá até dezembro de 2015 para se formar !
    
  
  Scenario: Entering non-numeric character in start year and get a warning
    
    Given I am on the Jubilator Pro home page
    When I fill in ano_entrada with abc
    And I click on Calcular
    Then I should see Entre com um ano válido !