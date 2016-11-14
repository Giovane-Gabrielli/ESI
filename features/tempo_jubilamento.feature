Feature: User can know the time to be jubilado
  In order to know the time to be jubilado
  As a user
  I want to warned how many time I have to complete the course
  
  Scenario: Enter the start year and get the max time to complete
    
    Given I am on the Jubilator Pro home page
    When I fill ano_entrada with 2010
    And I click on Qual ano jubilo?
    Then I should see Você terá até 2015 para se formar