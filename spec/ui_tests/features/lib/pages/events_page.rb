require 'capybara/dsl'

class Events
  include Capybara::DSL

  def click_on_a_workshop
    click_link("Workshop")
  end

  def click_attend_as_student
    click_button("Attend as a student")
  end

end
