require 'capybara/dsl'

class NavBar
  include Capybara::DSL

  MENU_ID = "profile"

  def click_sign_in_link
    find_link('Sign in').click
  end

  def sign_in_link_visible?
    find_link('Sign in').visible?
  end

  def click_menu
    find(:id, MENU_ID).click
  end

  def find_tutorials_link
    find_link('Tutorials')
  end

  def click_tutorials_link
    find_tutorials_link.click
  end

  def click_event_link
    click_link("Events")
  end

  def click_nav_link(link_name)
    find_link(link_name).click
  end

  def click_donate
    find_link("Donate").click
  end

  def click_codebar_icon
    find(:css, 'div.brand').click
  end

end
