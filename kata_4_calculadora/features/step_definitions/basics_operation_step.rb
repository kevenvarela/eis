Given(/^the calculator page$/) do
  visit 'calculator' 
end

Given(/^an operator (\d+)$/) do |arg1|
  fill_in 'operator_1', with: arg1
end

Given(/^another operator (\d+)$/) do |arg1|
  fill_in 'operator_2', with: arg1
end

When(/^plus them$/) do
  choose 'plus'
  click_button('submit')
end

When(/^subtract them$/) do
  choose 'subtract'
  click_button('submit')
end

When(/^average them$/) do
  choose 'average'
  click_button('submit')
end

Then(/^the result is (\d+)$/) do |arg1|
  expect(page).to have_content arg1
end
