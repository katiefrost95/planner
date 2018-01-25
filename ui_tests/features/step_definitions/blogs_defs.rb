When("I click on blogs") do
  homepage_page.click_blogs_link
end

Then("I should be taken to the medium website") do
  expect(current_url).to eq 'https://medium.com/@codebar'
end
