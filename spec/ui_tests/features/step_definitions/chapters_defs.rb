When(/^I click on the chapters (.*)$/) do |chapters|
  homepage_page.click_chapter(chapters)
end

Then("expect page to be that chapter")do
  expect(chapters.find_sign_up_link).to be true
end

When("I click on a chapter") do
  homepage_page.click_London_chapter
end

When("I click on sign up") do
  chapters.click_link_sign_up
end

When("choose to sign up as a student") do
  new_member_page.click_eligible_student_link
end

Then("the website will sign me in and take me to the dashboard") do
  expect(current_url).to eq "http://localhost:3000/dashboard"
end
