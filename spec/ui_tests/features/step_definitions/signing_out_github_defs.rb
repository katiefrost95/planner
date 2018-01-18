Given("I am logged into github") do
  github_logout.visit_github
end

Then ("I should be able to logout of GitHub") do
  github_logout.click_dropdown_profile
end
