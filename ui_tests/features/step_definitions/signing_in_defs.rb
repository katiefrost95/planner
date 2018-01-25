Given("I have an account") do
  homepage_page.visit_homepage
end

When("I sign into codebar") do
  nav_bar.click_sign_in_link
end

And("I sign in to github") do
  sign_in_page.github_username("fake_github123@hotmail.com")
  sign_in_page.github_password("Thisisfake123")
  sign_in_page.click_sign_in_button
  sleep 1
  if current_url != "http://localhost:3000/dashboard"
    sign_in_page.click_authorize_button
  end
end

Then("I can see my account dashboard") do
  expect(dashboard.find_name_on_dashboard).to be true
end
