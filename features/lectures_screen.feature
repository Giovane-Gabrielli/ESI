Feature: Lectures presentation

As a user
I want to see a table of lectures
So that I can choose the correct ones

Scenario: See lectures

Given I am on lectures screen
When I choose um semestre
Then I should see as materias cursadas no semestre
