require 'capybara/dsl'

class MenuBar
  include Capybara::DSL

  def menu_dashboard
    find_link("My Dashboard").click
  end


end
