Given("I have an account") do
  homepage_page.visit_homepage
end

When("I sign into codebar") do
  homepage_page.click_sign_in_link
end

And("I sign in to github") do
  sign_in_page.github_username("fake_github123@hotmail.com")
  sign_in_page.github_password("Thisisfake123")
  sign_in_page.click_sign_in_button
end

Then("I can see my account dashboard") do
  expect(dashboard.find_name_on_dashboard("grace hopper")).to be true
end
