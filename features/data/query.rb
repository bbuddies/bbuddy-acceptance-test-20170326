Transform /^from start_date "([^"]*)" to end_date "([^"]*)"$/ do |start_date, end_date|
  Query.new(start_date: start_date, end_date: end_date)
end