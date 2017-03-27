require_relative 'page_base'

class BudgetsPage < PageBase

  def marked
    'Budgets'
  end

  def go_to_add_budget
    touch 'Add'
  end

  def assert_budget_exists(budget)
    wait_for_element_does_not_exist 'Save'
    wait_for_text budget.month
    wait_for_text budget.amount
  end

  def assert_budget_not_exists(budget)
    wait_for_element_does_not_exist 'Save'
    wait_for_text_does_not_exist budget.amount
  end
end
