Before do
  homepage_page.visit_homepage
  nav_bar.click_sign_in_link
  sign_in_page.github_username("fake_github123@hotmail.com")
  sign_in_page.github_password("Thisisfake123")
  sign_in_page.click_sign_in_button
end



After do
  homepage_page.find_menu
  homepage_page.click_log_out
<<<<<<< HEAD
  github_logout.visit_github    github_logout.click_dropdown_profile
  sleep 4
  github_logout.click_logout
  sleep 4
=======
  github_logout.visit_github
  github_logout.click_dropdown_profile
  github_logout.click_logout
>>>>>>> Katie-writing_tests
end
