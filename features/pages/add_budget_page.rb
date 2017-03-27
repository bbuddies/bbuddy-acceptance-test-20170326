require_relative 'page_base'

class AddBudgetPage < PageBase

  def marked
    'Save'
  end

  def add_budget(budget)
    enter_text 'month', budget.month
    enter_text 'amount', budget.amount
    touch 'Save'
  end

end
