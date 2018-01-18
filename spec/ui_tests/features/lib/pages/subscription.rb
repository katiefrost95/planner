require 'capybara/dsl'

class SubscriptionPage
  include Capybara::DSL

  COACHES_LONDON_BUTTON_ID = 'london-coaches'

  def find_london_coaches_button

  end

  def click_london_coaches_subscribe_button
    find(:id, COACHES_LONDON_BUTTON_ID).click
  end

end
