require 'capybara/dsl'

class Dashboard
  include Capybara::DSL

  def find_name_on_dashboard
    find_link("Edit").visible?
  end

  def click_attending_workshop
    click_link('Workshop')
  end

  def click_attending_event
    click_link('Event')
  end

end
