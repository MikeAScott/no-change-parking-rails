Given(/^The following payments list $/) do |table|
  ActiveCucumber.create_many Payment, table
end

When(/^We get a new call from driver 'Dave'$/) do

end

When(/^He pays to park "([^"]*)" with (.*)$/) do |vehicle, payment_type|
 FactoryGirl.create :payment, vehicle: vehicle
end

Then(/^the payment should be accepted$/) do
end

Then(/^the payments list should show $/) do |table|
  ActiveCucumber.diff_all! Payment, table
end
