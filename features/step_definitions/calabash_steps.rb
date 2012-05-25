require 'calabash-cucumber/calabash_steps'

When /^I subtract (\d+) from (\d+)$/ do |subtrahend, minuend|
  step %{I fill in "left" with "#{minuend.to_s}"}
  step %{I fill in "right" with "#{subtrahend.to_s}"}
  step %{I touch "subtract"}
end

Then /^I should see "(.*?)" as result$/ do |result|
  res = query("view:'UIAlertView'", "message").first
  res.should == result
end



