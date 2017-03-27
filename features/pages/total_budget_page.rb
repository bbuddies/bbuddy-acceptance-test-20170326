require_relative 'page_base'

class TotalBudgetPage < PageBase

  def assert_total_exists(total)
    wait_for_element_does_not_exist 'Query'
    wait_for_text total
  end

end
