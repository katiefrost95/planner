require 'capybara/dsl'

class Dashboard
  include Capybara::DSL

  def find_name_on_dashboard(name)
    find_link(name).visible?
  end

end
