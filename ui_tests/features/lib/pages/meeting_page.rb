require 'capybara/dsl'

class MeetingPage
  include Capybara::DSL

  def find_response_message
    page.body
  end

  def click_cancel_meeting_link
    click_link("Can't make it anymore? Click here to cancel your spot.")
  end

end
