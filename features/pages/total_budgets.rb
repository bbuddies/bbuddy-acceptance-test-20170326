require_relative 'page_base'

 class TotalBudgetsPage  < PageBase
   def go_to_total_budgets
     touch 'Sum'
   end
   def sum_total_udgets(date1, date2)
     enter_text 'date1', date1
     enter_text 'date2', date2
     touch 'Sum'
   end
   def assert_total_budgets(budget)
     wait_for_element_does_not_exist 'Sum'
   end
 end