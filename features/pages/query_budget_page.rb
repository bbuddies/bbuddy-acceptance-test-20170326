require_relative 'page_base'

class QueryBudgetPage < PageBase

  def marked
    'Query'
  end

  def query_budget(query)
    enter_text 'start date', query.start_date
    enter_text 'end date', query.end_date
    touch 'Query'
  end

end
