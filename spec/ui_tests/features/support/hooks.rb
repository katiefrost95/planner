Before('@hooks') do
  homepage_page.visit_homepage
  nav_bar.click_sign_in_link
  sign_in_page.github_username("fake_github123@hotmail.com")
  sign_in_page.github_password("Thisisfake123")
  sign_in_page.click_sign_in_button
  sleep 1
  if current_url != "http://localhost:3000/dashboard"
    sign_in_page.click_authorize_button
  end
end



Before('@unattend_workshop') do
  nav_bar.click_menu
  menu_bar.menu_subscriptions
  if subscription_page.check_london_students_button
    puts('subscribed')
  else
    subscription_page.click_london_students_button
  end
end

Before('@unsubscribe') do
  homepage_page.visit_homepage
  nav_bar.click_menu
  menu_bar.menu_subscriptions
  if subscription_page.check_brighton_students_button
    subscription_page.click_brighton_subscribe
  end
  if subscription_page.check_london_students_button
    subscription_page.click_london_students
  end
  if subscription_page.check_london_coaches_button
    subscription_page.click_london_coaches_subscribe_button
  end
end

After('~@tutorials','~@sign_out', '~@chapters_sign_out', '~@blogs', '~@footer', '~@host_workshop', '~@navbar', '~@donate') do
  nav_bar.click_menu
  homepage_page.click_log_out
  github_logout.visit_github
  github_logout.click_dropdown_profile
  github_logout.click_logout
end
