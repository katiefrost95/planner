require 'capybara/dsl'

class JobListing
  include Capybara::DSL

  JOB_TITLE = "job_title"
  COMPANY = "job_company"
  LOCATION = "job_location"
  DESCRIPTION = "job_description"
  EMAIL = "job_email"
  LINK = "job_link_to_job"
  DAY_DATE = 'a[class="chosen-single"]'
  PICK_DAY_DATE = 'li[data-option-array-index="3"]'
  FIND_MONTH = 'div[id="job_expiry_date_2i_chosen"]'
  CHOOSE_MONTH = 'li[data-option-array-index="7"]'

  def job_title(title)
    fill_in(JOB_TITLE, with: title)
  end

  def job_company(company)
    fill_in(COMPANY, with: company)
  end

  def job_location(location)
    fill_in(LOCATION, with: location)
  end

  def job_description(description)
    fill_in(DESCRIPTION, with: description)
  end

  def job_email(email)
    fill_in(EMAIL, with: email)
  end

  def job_link(link)
    fill_in(LINK, with: link)
  end

  def job_day_date
    find(DAY_DATE).click
  end

  def pick_job_day_date
    find(PICK_DAY_DATE).click
  end

  def find_month
    find(FIND_MONTH).click
  end

  def choose_month
    find('li[data-option-array-index="7"]').click
  end

  def submit_job_listing
    click_on("Submit job")
  end

end
