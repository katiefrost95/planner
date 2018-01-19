require 'capybara/dsl'

class WorkshopPage
  include Capybara::DSL

  def click_attend_as_coach_button
    click_link('Attend as a coach')
  end

end
