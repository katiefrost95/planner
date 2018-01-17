Given("I am signed in") do
  homepage_page.visit_homepage
  homepage_page.find_menu
  sleep 120
end

When("I click on menu") do
  homepage_page.click_menu
end

When("I click sign out") do

end

Then("i should be logged out of my account") do
  pending # Write code here that turns the phrase above into concrete actions
end
