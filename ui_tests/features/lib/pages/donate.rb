require 'capybara/dsl'

class Donate
  include Capybara::DSL

  DONATE_NAME = "donation_name"
  DONATE_SUBMIT_BUTTON = "donate"

  def donation_name(name)
    fill_in(DONATE_NAME, with: name)
  end

  def click_donate_button
    find(:id, DONATE_SUBMIT_BUTTON).click
  end

  def error_message
    find('div[class="message"]').text
  end

end
