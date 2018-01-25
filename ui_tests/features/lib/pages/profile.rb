require 'capybara/dsl'

class Profile
  include Capybara::DSL

  def find_update_details_button
    find_link("Update your details").visible?
  end

  def find_words_on_page(words)
    find("h2", :text => words)
  end

  def find_subscription
    find("a", :text => "Students (Brighton)")
  end

  def find_not_subscribed
    find("label", :text => "You are not subscribed to any chapters")
  end

  def find_subscribed_london_student
    find("a", :text => "Students (London)").visible?
  end

  def find_subscription
    find("a", :text => "Students (Brighton)").visible?
  end

  def find_london_coaches
    if find("a", :text => "Coaches (London)").visible?
      return true
    end
    return false

  end

end
