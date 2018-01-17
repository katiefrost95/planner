require 'capybara/dsl'

class Dashboard
  include Capybara::DSL

  def find_name_on_dashboard
    find_link("Edit").visible?
  end

end
