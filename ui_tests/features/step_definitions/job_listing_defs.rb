When("I navigate to the list a job page") do
  menu_bar.job_listing
end

When("I fill out the details with the correct information.") do
  job_listing.job_title("title")
  job_listing.job_company("company")
  job_listing.job_location("location")
  job_listing.job_description("This is a description")
  job_listing.job_email("fake@fake.com")
  job_listing.job_link("This is a link")
  job_listing.job_day_date
  job_listing.pick_job_day_date
  job_listing.submit_job_listing
end

And("I am taken to the preview page") do
  expect(job_listing_preview_page.find_edit_button).to be true
end

Then("I should successfully submit my job listing")do
  job_listing_preview_page.click_submit_preview
  expect(current_url).to eq 'http://localhost:3000/'
end

When("I do not fill in all the required information") do
  job_listing.job_company("company")
  job_listing.job_location("location")
  job_listing.job_description("This is a description")
  job_listing.job_email("fake@fake.com")
  job_listing.submit_job_listing
end

Then("I should remain on the page when I press submit") do
  expect(current_url).to eq 'http://localhost:3000/jobs/new'
end
