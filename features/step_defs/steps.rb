Given(/^I am on the YouTube home page$/) do
  visit 'http://www.youtube.com'
end

When(/^I search for "(.*?)"$/) do |search_term|
  fill_in 'search_query', :with => search_term
  click_on 'search-btn'
end

Then(/^videos of large rodents are returned$/) do
  puts page.inspect
  expect(page).to have_content 'Garibaldi'
end
