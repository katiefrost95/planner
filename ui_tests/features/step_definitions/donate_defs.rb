When("I click donation") do
  nav_bar.click_donate
end

When("I input my name and dont enter how much to donate") do
  donate.donation_name("Nick")
  donate.click_donate_button
end

Then("I should get the correct error") do
  expect(donate.error_message).to include 'You have not entered a valid amount'
  sleep 4
end
