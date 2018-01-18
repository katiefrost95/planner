require 'capybara/dsl'

class HomePage
  include Capybara::DSL

  HOMEPAGE_URL = 'localhost:3000'
  TUTORIAL_LINK_NAME = 'Tutorials'
  MENU_ID = "profile"

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_sign_in_link
    find_link('Sign in').click
  end

  def sign_in_link_visible?
    find_link('Sign in').visible?
  end

  def find_tutorials_link
    find_link('Tutorials')
  end

  def click_tutorials_link
    find_tutorials_link.click
  end

  def find_menu
    find(:id, MENU_ID).click
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

end
