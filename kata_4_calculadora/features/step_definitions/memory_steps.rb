Given(/^non operations did$/) do
  visit '' 
end

Given(/^make a sum with (\d+) and (\d+)$/) do |arg1, arg2|
  fill_in 'operator_1', with: arg1
  fill_in 'operator_2', with: arg1
  choose 'plus'
  click_button('submit')
end

Given(/^make a subtract with (\d+) and (\d+)$/) do |arg1, arg2|
  fill_in 'operator_1', with: arg1
  fill_in 'operator_2', with: arg1
  choose 'subtract'
  click_button('submit')
end

Given(/^make a average with (\d+) and (\d+)$/) do |arg1, arg2|
  fill_in 'operator_1', with: arg1
  fill_in 'operator_2', with: arg1
  choose 'average'
  click_button('submit')
end

Given(/^restart the memory$/) do
  click_button('refresh')
end

Then(/^the total of operations is (\d+)$/) do |arg1|
  expect(page).to have_content 'Total operations: '+arg1
end