When(/^I fill in "(.+)" with "(.+)"$/) do |field, text|
  fill_in field, :with => text
end

When /^(?:|I )select datetime "([^ ]*) ([^ ]*) ([^ ]*) - ([^:]*):([^"]*)" as the "([^"]*)"$/ do |year, month, day, hour, minute, field|
  select(year,   :from => "#{field}_1i")
  select(month,  :from => "#{field}_2i")
  select(day,    :from => "#{field}_3i")
  select(hour,   :from => "#{field}_4i")
  select(minute, :from => "#{field}_5i")
end

When(/^I press the "(.+)" button$/) do |text|
  click_button text
end

When(/^I click on Sign up link$/) do
  visit new_user_registration_path
end

When(/^I click on Logout link$/) do
  click_link "Logout"
end
