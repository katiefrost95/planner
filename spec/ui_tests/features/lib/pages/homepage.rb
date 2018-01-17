require 'capybara/dsl'

class HomePage
  include Capybara::DSL

  HOMEPAGE_URL = 'http://localhost:3000'
  TUTORIAL_LINK_NAME = 'Tutorials'
  MENU_ID = "profile"

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def find_tutorials_link
    find('a', text: 'Tutorials', exact: true)
  end

  def click_tutorials_link
    find_tutorials_link.click
  end

  def find_menu
    find(MENU_ID)
  end

  def click_menu
    find_menu.click
  end

  def click_log_out
    find('a', text: 'Sign out', exact: true).click
  end




end
