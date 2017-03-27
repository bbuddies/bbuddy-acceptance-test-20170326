@login
Feature: Budgets

  Scenario: add a new budget
    When add budget as month "2017-03" and amount 1000
    Then I can see the budget in the list as below
      | month   | amount |
      | 2017-03 | 1000   |


  Scenario: add a exist budget
    Given a exist budget as month "2017-03" and amount 2000
    When add budget as month "2017-03" and amount 1000
    Then I can see the budget in the list as below
      | month   | amount |
      | 2017-03 | 1000   |
    And doesn't exist budget as month "2017-03" and amount 2000