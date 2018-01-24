require 'capybara/dsl'

class UpdateDetails
  include Capybara::DSL
  MEMBER_NAME_INPUT = 'member_name'
  MEMBER_PRONOUNS_INPUT = 'member_pronouns'
  MEMBER_EMAIL_INPUT = 'member_email'
  MEMBER_MOBILE_INPUT = 'member_mobile'
  MEMBER_DESCRIPTION_INPUT = 'member_about_you'
  MEMBER_TWITTER_INPUT = "member_twitter"

  def member_name_input(name)
    fill_in(MEMBER_NAME_INPUT, with: name)
  end

  def member_pronouns_input(pronoun)
    fill_in(MEMBER_PRONOUNS_INPUT, with: pronoun)
  end

  def member_email_input(email)
    fill_in(MEMBER_EMAIL_INPUT, with: email)
  end

  def member_mobile_input(number)
    fill_in(MEMBER_MOBILE_INPUT, with: number)
  end

  def member_description_input(description)
    fill_in(MEMBER_DESCRIPTION_INPUT, with: description)
  end

  def member_twitter_input(twitter)
    fill_in(MEMBER_TWITTER_INPUT, with: twitter)
  end

  def click_save
    click_button("Save")
  end

  def find_error_message
    find(:css, 'span.error')
  end



end
