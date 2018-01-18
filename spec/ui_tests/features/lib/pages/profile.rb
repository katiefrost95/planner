require 'capybara/dsl'

class Profile
  include Capybara::DSL

  def find_update_details_button
    find_link("Update your details").displayed?
  end

end
