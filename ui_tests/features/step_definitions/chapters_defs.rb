When(/^I press link to the chapter (.*)$/) do |chapters|
  homepage_page.click_chapter(chapters)
end

Then(/^expect page to be the chapter (.*)$/) do |url|
  expect(current_url).to eq (url)
end

When("I choose a chapter") do
  homepage_page.click_London_chapter
end

And("I click on sign up") do
  chapters.click_link_sign_up
end

And("choose to sign up as a student") do
  new_member_page.click_eligible_student_link
end

Then("the website will sign me in and take me to the dashboard") do
  expect(current_url).to eq "http://localhost:3000/dashboard"
end
