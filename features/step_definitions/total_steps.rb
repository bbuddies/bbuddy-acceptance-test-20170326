#language: zh-CN

  假如(/^存在如下预算$/) do |total|
    TotalPage.open.go_to_total_budgets
  end

  当(/^查询开始日期"([^"]*)"，结束时间"([^"]*)"的预算$/) do |date1, date2|
    TotalPage.open.sum_total_udgets(date1, date2)
  end

  那么(/^预算为(\d+)$/) do |totalBudgets|
    TotalPage.open.assert_total_budgets(totalBudgets)
  end