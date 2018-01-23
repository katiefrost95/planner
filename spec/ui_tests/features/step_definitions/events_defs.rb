And("I am subscribed as a coach to one of the locations") do
end

When("I click on events link") do
  nav_bar.click_event_link
end

And("I click on a workshop") do
  events.click_on_a_workshop
end

And("I click attend as coach") do
  workshops_page.click_attend_as_coach_button
end

And("I click attend button") do
  invitations.click_attend
end

Then("I should receive the corresponding attend workshop message") do
  expect(invitations.find_response_message).to include('Thanks for getting back to us').and include('See you at the workshop!')
end

And("I click on an event") do
  events.click_on_an_event
end

And("I click RSVP as a coach") do
  attend_event_page.click_rsvp_coach_button
end

Then("I should receive the corresponding attend event message") do
  expect(attend_event_page.find_response_message).to include('Your spot has been confirmed for Event! We look forward to seeing you there.')
end

When("I go to my dashboard") do
  nav_bar.click_menu
  menu_bar.menu_dashboard
end

And("I click on a workshop I am set to attend") do
  dashboard.click_attending_workshop
end

And("I click the manage your invitation button") do
  invitations.click_manage_invitation_button
end

And("I click I can no longer attend button") do
  workshops_page.click_link_no_longer_attend
end

When("I click on an event I am set to attend") do
  dashboard.click_attending_event
end

And("I click the cancel my spot button") do
  attend_event_page.click_cancel_my_spot_button
end

And("I click ok on the alert") do
end

Then("I should receive the corresponding message for cancelling an event") do
  expect(attend_event_page.find_response_message).to include('We are so sad you can\'t make it, but thanks for letting us know')
end

And("I click on a meeting") do
  events.click_on_a_meeting
end

And("I click attend") do
  invitations.click_attend
end

Then("I should receive the message for successfully attending a meeting") do
  expect(meeting_page.find_response_message).to include('Your RSVP was successful. We look forward to seeing you at the Monthly!')
end

And("I click on a meeting I am set to attend") do
  dashboard.click_attending_meeting
end

And("I click can’t make it anymore link") do
  meeting_page.click_cancel_meeting_link
end

Then("I should receive the message for cancelling a meeting") do
  expect(meeting_page.find_response_message).to include('Thanks for letting us know you can\'t make it.')
end
