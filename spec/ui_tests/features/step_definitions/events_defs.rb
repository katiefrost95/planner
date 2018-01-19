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
  invitations.click_attend_workshop
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
