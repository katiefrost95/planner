Given("I am on the codebar homepage") do
  homepage_page.visit_homepage
end

When("I click sign up as a student") do
  homepage_page.click_student_signup
end

And("I click I accept the terms and eligibility") do
  new_member_page.click_eligible_student_link
end

And("I authorize codebar to access my github") do
  sign_in_page.github_username("fake_github123@hotmail.com")
  sign_in_page.github_password("Thisisfake123")
  sign_in_page.click_sign_in_button
end

Then("I should be redirected to my dashboard") do
  expect(dashboard.find_name_on_dashboard).to be true
end

When("I click sign up as a coach") do
  homepage_page.click_coach_signup
end

And("I click the sign up as a coach button") do
  new_member_page.click_sign_up_as_coach
end

When("I click on host a workshop") do
  homepage_page.click_host_a_workshop
end

Then("A pop up window should appear") do

end
