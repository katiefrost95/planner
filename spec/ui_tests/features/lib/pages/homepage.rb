require 'capybara/dsl'

class HomePage
  include Capybara::DSL

  HOMEPAGE_URL = 'http://localhost:3000'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end


end
