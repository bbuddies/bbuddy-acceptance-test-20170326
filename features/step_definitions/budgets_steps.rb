When(/^add budget as month "([^"]*)" and amount (\d+)$/) do |arg1, arg2|
  touch 'Budgets'
  touch 'Add'
  enter_text 'month', arg1
  enter_text 'amount', arg2
  touch 'Save'
end

Then(/^I can see the budget in the list as below$/) do |table|
end