Given(/^I am at the homepage$/) do
  visit root_path
end

Given(/^I am an user$/) do
  @user = FactoryGirl.create(:user)
end

Given(/^I am signed in$/) do
  login_as(@user, :scope => :user)
end


Then(/^I should see "(.+)"$/) do |text|
  expect(page).to have_content(text)
end