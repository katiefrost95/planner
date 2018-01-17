Given("I am logged in") do
  homepage_page.visit_homepage
  homepage_page.click_sign_in_link
  sign_in_page.github_username("fake_github123@hotmail.com")
  sign_in_page.github_password("Thisisfake123")
  sign_in_page.click_sign_in_button
  sleep 3
end

And("I click on dashboard") do
  menu_bar.menu_dashboard
end

Then("I should be able view upcoming workshops in subscribed cities.") do
  pending # Write code here that turns the phrase above into concrete actions
end
