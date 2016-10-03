Feature: Homepage
  In order para entrar no site
  As a usuario
  I want ver uma homepage de boas vindas
  
  Scenario: See homepage
    Given I have a homepage
    When I enter the site
    Then I should see the homepage