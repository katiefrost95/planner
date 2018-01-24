require 'capybara/dsl'

class WorkshopPage
  include Capybara::DSL

  def click_attend_as_coach_button
    click_link('Attend as a coach')
  end

  def click_link_no_longer_attend
    click_link("I can no longer attend")
  end

end
