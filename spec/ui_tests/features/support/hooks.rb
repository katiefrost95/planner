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

# Before('@subscribe') do
#   nav_bar.click_menu
#   menu_bar.menu_subscriptions
#   if subscription_page.check_london_students_button
#     subscription_page.click_london_students_subscribe_button
#   end
# end

After('~@tutorials','~@sign_out', '~@chapters_sign_out') do
  nav_bar.click_menu
  homepage_page.click_log_out
  github_logout.visit_github
  github_logout.click_dropdown_profile
  github_logout.click_logout
end

# Before('@homepage_signup_student_coach') do
#   homepage_page.visit_homepage
#    nav_bar.click_menu
#    menu_bar.menu_profile
#  if profile.find_london_coaches
#    homepage_page.visit_homepage
#    nav_bar.click_menu
#    menu_bar.menu_subscriptions
#    subscription_page.click_london_coaches_subscribe_button
#  end
#  homepage_page.visit_homepage
#  nav_bar.click_menu
#  menu_bar.menu_profile
#  if profile.find_subscribed_london_student
#    homepage_page.visit_homepage
#    nav_bar.click_menu
#    menu_bar.menu_subscriptions
#    subscription_page.click_london_students
#  end
# end
