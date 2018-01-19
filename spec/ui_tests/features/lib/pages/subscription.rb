require 'capybara/dsl'

class SubscriptionPage
  include Capybara::DSL

  COACHES_LONDON_BUTTON_ID = 'london-coaches'
  STUDENTS_BRIGHTON_BUTTON_ID = 'brighton-students'

  def find_london_coaches_button

  end

  def click_london_coaches_subscribe_button
    find(:id, COACHES_LONDON_BUTTON_ID).click
  end

  def click_brighton_subscribe
    find(:id, STUDENTS_BRIGHTON_BUTTON_ID).click
  end


end
