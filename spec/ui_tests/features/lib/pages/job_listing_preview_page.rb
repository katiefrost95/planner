require 'capybara/dsl'

class JobListingPreviewPage
  include Capybara::DSL


  def find_edit_button
    find_link("Edit").visible?
  end

  def click_submit_preview
    click_on("Submit")
  end

end
