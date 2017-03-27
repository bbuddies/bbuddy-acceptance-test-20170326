require_relative 'page_base'

class BudgetsPage < PageBase

  def marked
    'Budgets'
  end

  def go_to_add_budget
    touch 'Add'
  end

  def query_budget(query)
    enter_text 'start', query[:start_date]
    enter_text 'end', query[:end_date]
    touch 'Query'
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
