require 'capybara/dsl'

class Footer
  include Capybara::DSL

  def find_code_of_conduct(footer_link)
    page.find('footer', text:footer_link).click_link(footer_link)
  end

  def click_slack_icon
    find(:css, 'i.fa.fa-slack.fa-stack-1x.fa-inverse').click
  end

  def click_github_icon
    find(:css, 'i.fa.fa-github.fa-stack-1x.fa-inverse').click
  end

  def click_twitter_icon
    find(:css, 'i.fa.fa-twitter.fa-stack-1x.fa-inverse').click
  end

  def click_facebook_icon
    find(:css, 'i.fa.fa-facebook.fa-stack-1x.fa-inverse').click
  end

end
