When(/^add budget as (month "[^"]*" and amount \d+)$/) do |budget|
  DashboardPage.open.go_to_budgets
  BudgetsPage.open.go_to_add_budget
  AddBudgetPage.open.add_budget(budget)
end

Then(/^I can see the budget in the list as below$/) do |budgets|
  budgets.each do |budget|
    BudgetsPage.open.assert_budget_exists(budget)
  end
end