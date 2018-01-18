require 'capybara/dsl'

class HomePage
  include Capybara::DSL

  HOMEPAGE_URL = 'localhost:3000'
  TUTORIAL_LINK_NAME = 'Tutorials'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def menu_visible
    find(:id, MENU_ID).visible?
  end

  # def click_menu
  #   find_menu.click
  # end

  def click_log_out
    find('a', text: 'Sign out', exact: true).click
  end

  def click_student_signup
    find_link("Sign up as a student").click
  end

  def click_coach_signup
    find_link("Sign up as a coach").click
  end

  def click_host_a_workshop
    find_link("Host a workshop").click
  end

  def click_events_link
    find_link("Events").click
  end

end
