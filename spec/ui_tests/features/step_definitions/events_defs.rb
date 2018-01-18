And("I am subscribed as a coach to one of the locations") do

  # if sign_in_page.click_authorize_button_displayed
  #   sleep 20
  #   sign_in_page.click_authorize_button
  # end

  nav_bar.click_menu
  menu_bar.menu_subscriptions
  subscription_page.click_london_coaches_subscribe_button
end

When("I click on events link") do
  nav_bar.click_event_link
end

And("I click on a workshop") do

end

And("I click attend as coach") do

end

And("I click attend button") do

end

Then("I should receive the corresponding message") do

end

And("I click on an event") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I click RSVP as a coach") do
  pending # Write code here that turns the phrase above into concrete actions
end
