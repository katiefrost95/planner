Before('@events') do
  homepage_page.visit_homepage
  nav_bar.click_sign_in_link
  sign_in_page.github_username("fake_github123@hotmail.com")
  sign_in_page.github_password("Thisisfake123")
  sign_in_page.click_sign_in_button
end

Before('@subscribe') do
  nav_bar.click_menu
  menu_bar.menu_subscriptions
  if subscription_page.check_london_coaches_button
    subscription_page.click_london_coaches_subscribe_button
  end
end

After do
  nav_bar.click_menu
  homepage_page.click_log_out
  github_logout.visit_github
  github_logout.click_dropdown_profile
  github_logout.click_logout
end
