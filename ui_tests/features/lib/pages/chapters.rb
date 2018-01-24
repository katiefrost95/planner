require 'capybara/dsl'

class Chapters
  include Capybara::DSL

  def find_sign_up_link
    find_link("Sign up").visible?
  end

  def click_link_sign_up
    find_link("Sign up").click
  end

end
