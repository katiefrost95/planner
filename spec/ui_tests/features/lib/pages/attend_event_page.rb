require 'capybara/dsl'

class AttendEventPage
  include Capybara::DSL

  def click_attend_as_coach_button
    click_link('Attend as a coach')
  end

  def click_rsvp_coach_button
    click_link('RSVP as a coach')
  end

  def find_response_message
    page.body
  end

  def click_cancel_my_spot_button
    accept_alert do
      click_link('Cancel my spot')
    end
  end

end
