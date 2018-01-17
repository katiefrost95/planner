require 'capybara/dsl'

class HomePage
  include Capybara::DSL

  HOMEPAGE_URL = 'http://localhost:3000'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_sign_in_link
    find_link('Sign in').click
  end

end
