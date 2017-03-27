Transform /^from "([^"]*)" to "([^"]*)"$/ do |start_date, end_date|
  # Query.new(start_date: start_date, end_date: end_date)
  {start_date: start_date, end_date: end_date}
end