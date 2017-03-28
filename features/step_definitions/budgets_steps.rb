When(/^add budget as (month "[^"]*" and amount \d+)$/) do |budget|
  DashboardPage.open.go_to_budgets
  BudgetsPage.open.go_to_add_budget
  AddBudgetPage.open.add_budget(budget)
end

When(/^query budgets (from "[^"]*" to "[^"]*")$/) do |query|
  DashboardPage.open.go_to_budgets
  BudgetsPage.open.query_budget(query)
end

Then(/^I can see the total of budgets is (\d+)$/) do |total|
  TotalBudgetPage.open.assert_total_exists(total)
end

Then(/^I can see the budget in the list as below$/) do |budgets|
  budgets.each do |budget|
    BudgetsPage.open.assert_budget_exists(budget)
  end
end

Given(/^exists the following budgets$/) do |budgets|
  budgets.each do |budget|
    budget.save!
  end
end

Then(/^doesn't exist budget as (month "[^"]*" and amount \d+)$/) do |budget|
    BudgetsPage.open.assert_budget_not_exists(budget)
end






