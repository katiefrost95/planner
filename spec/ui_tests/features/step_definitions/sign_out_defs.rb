Given("I am signed in") do
  homepage_page.visit_homepage
  nav_bar.click_sign_in_link
  sign_in_page.github_username("fake_github123@hotmail.com")
  sign_in_page.github_password("Thisisfake123")
  sign_in_page.click_sign_in_button
end

And("I click on menu") do
  nav_bar.click_menu
end

When("I click sign out") do
  homepage_page.click_log_out
end

Then("I should be logged out of my account") do
  expect(homepage_page.sign_in_link_visible?).to be true
end
