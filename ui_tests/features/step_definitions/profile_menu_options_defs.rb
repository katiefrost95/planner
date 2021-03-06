Given("I am logged in") do

end

And("I click on dashboard") do
  menu_bar.menu_dashboard
end

Then("I should be able view upcoming workshops in subscribed cities.") do
  dashboard.find_name_on_dashboard
end

And("I click on profile") do
  menu_bar.menu_profile
end

Then("I should be able view my profile details.") do
  expect(profile.find_update_details_button).to be true
end

And("I click on manage subscriptions") do
  menu_bar.menu_subscriptions
end

And("I click to subscribe to a city of my choice as a student") do
  if subscription_page.check_brighton_students_button
    puts 'subscribed'
  else
    subscription_page.click_brighton_subscribe
  end
end

And("I click to unsubscribe to a city of my choice as a student") do
  if !subscription_page.check_brighton_students_button
    puts "Unsubscribed"
  else
    subscription_page.click_brighton_subscribe
  end
end

Then("I should successfully subscribe") do
  nav_bar.click_menu
  menu_bar.menu_profile
  profile.find_subscription
end


Then("I should successfully unsubscribe") do
    nav_bar.click_menu
    menu_bar.menu_profile
    profile.find_not_subscribed
end

And("I click update my details") do
  menu_bar.menu_details
end

And("I fill in my details with the info I want") do
  update_details.member_name_input("Nigel Noodle")
  update_details.member_pronouns_input("Shee")
  update_details.member_email_input("fake_github123@hotmail.com")
  update_details.member_mobile_input('00000000')
  update_details.member_description_input("I am a great coder")
  update_details.member_twitter_input('twitter')
end

And("I click save") do
  update_details.click_save
end

And("I fill in my details incorrectly") do
  update_details.member_name_input('')
end

Then("I should get an error message") do

end

Then("my details should be successfully updated") do
  profile.find_words_on_page('Nigel Noodle')
end

When("I click on invitations") do
  menu_bar.menu_invitations
end

Then("I should be able to view upcoming workshops or workshops attended") do
  expect(invitations.upcoming_workshops).to be true
  expect(invitations.attended_workshops).to be true
end

And("I am invited to an event") do
  nav_bar.click_event_link
  events.click_on_a_workshop
  events.click_attend_as_student
  events.click_dropdown
  events.click_dropdown_option
  events.click_attend_button
  events.check_on_confirmation_page

end

And("I click attending to the workshop") do
  invitations.click_attending
end

Then("I receive a message confirming my attendance") do
  expect(invitations.find_cannot_attend).to be true
end

Then("I can no longer attend") do
  expect(invitations.find_cannot_attend).to be true
  invitations.click_cannot_attend
  expect(invitations.find_link_attend).to be true
end
