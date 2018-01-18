Given("I am signed in") do
  homepage_page.visit_homepage
  homepage_page.find_menu
end

And("I click on menu") do
  homepage_page.find_menu
end

When("I click sign out") do

end

Then("I should be logged out of my account") do
  pending # Write code here that turns the phrase above into concrete actions
end
