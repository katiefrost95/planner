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

  def find_tutorials_link
    find_link('Tutorials')
  end

  def click_tutorials_link
    find_tutorials_link.click
  end

  def find_menu
<<<<<<< HEAD
    find(:id, MENU_ID)
=======
    find(:id,MENU_ID)
>>>>>>> 333100000148fe6d095758c8c8473c852ad75e55
  end

  def click_menu
    find_menu.click
  end

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
