require 'capybara/dsl'

class Footer
  include Capybara::DSL

  def find_code_of_conduct(footer_link)
    page.find('footer', text:footer_link).click_link(footer_link)
  end



end
