require_relative 'page_base'

 class TotalPage  < PageBase
   def marked
     'Total'
   end
   def go_to_total_budgets
     touch 'Total'
   end
   def go_to_cal_total_budgets
     touch 'SumBudget'
   end
   def sum_total_budgets(date1, date2)
     enter_text 'start_date', date1
     enter_text 'end_date', date2
     touch 'Sum'
   end
   def assert_total_budgets(budget)
     wait_for_element_does_not_exist 'Sum'
   end
 end