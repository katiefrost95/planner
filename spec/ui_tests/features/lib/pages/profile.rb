require 'capybara/dsl'

class Profile
  include Capybara::DSL

  def find_update_details_button
    find_link("Update your details").visible?
  end

  def find_words_on_page(words)
    find("h2", :text => words)
  end

end
