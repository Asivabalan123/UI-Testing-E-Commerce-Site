require 'selenium-webdriver'

class Selenium_yourLogo

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @practice_form_url = 'http://automationpractice.com/index.php'
    @sign_in = 'login'
    @clear_email = 'email'
    @create_email = 'email_create'
    @create_an_account = 'SubmitCreate'
    @gender_mr = 'id_gender1'
    @gender_mrs = 'id_gender2'
    @first_name = 'customer_firstname'
    @last_name = 'customer_lastname'
    @password = 'passwd'
    @days = 'days'
    @months = 'months'
    @years = 'years'
  end

  def visit_your_logo
    @chrome_driver.get(@practice_form_url)
  end

  def current_url
    @chrome_driver.current_url
  end

  def visit_sign_in
    @chrome_driver.find_element(:class, @sign_in).click
  end

  def create_email_address(text)
    @chrome_driver.find_element(:id, @create_email).send_keys(text)
  end

  def input_create_an_account
    @chrome_driver.find_element(:name, @create_email).attribute('value')
  end

  def get_email_value
    @chrome_driver.find_element(:name, @create_email).attribute('value')
  end

  def create_an_account
    @chrome_driver.find_element(:id, @create_an_account).click
  end

  def input_mr_field
    @chrome_driver.find_element(:id, @gender_mr).click
  end

  def get_mr_value
    @chrome_driver.find_element(:id, @gender_mr).selected?
  end

  def input_mrs_field
    @chrome_driver.find_element(:id, @gender_mrs).click
  end

  def get_mrs_value
    @chrome_driver.find_element(:id, @gender_mrs).selected?
  end

  def enter_first_name(text)
    @chrome_driver.find_element(:id, @first_name).send_keys(text)
  end

  def get_first_name
    @chrome_driver.find_element(:name, @first_name).attribute('value')
  end

  def enter_last_name(text)
    @chrome_driver.find_element(:id, @last_name).send_keys(text)
  end

  def get_last_name
    @chrome_driver.find_element(:name, @last_name).attribute('value')
  end

  def clear_signed_up_email
    @chrome_driver.find_element(:id, 'email').clear
  end

  def input_signed_up_email(text)
    @chrome_driver.find_element(:id, 'email').send_keys(text)
  end

  def get_signed_up_email
    @chrome_driver.find_element(:name, 'email').attribute('value')
  end

  def enter_password(text)
    @chrome_driver.find_element(:id, @password).send_keys(text)
  end

  def get_password
    @chrome_driver.find_element(:id, @password).attribute('value')
  end



  def enter_dob_day(text)
    dropDown = @chrome_driver.find_element(:id, @days)
    option = Selenium::WebDriver::Support::Select.new(dropDown)
    option.select_by(:value, '14')
  end

  def get_date_of_birth_day
  @chrome_driver.find_element(:id, @days).text.include?('27')
  end

  def enter_dob_month(text)
    dropDown = @chrome_driver.find_element(:id, @months)
    option = Selenium::WebDriver::Support::Select.new(dropDown)
    option.select_by(:value, '10')
  end

  def get_date_of_birth_month
    @chrome_driver.find_element(:id, @months).text.include?('October')
  end

  def enter_dob_year(text)
    dropDown = @chrome_driver.find_element(:id, @years)
    option = Selenium::WebDriver::Support::Select.new(dropDown)
    option.select_by(:value, '1995')
  end

  def get_date_of_birth_year
    @chrome_driver.find_element(:id, @years).text.include?('2000')
  end

  def input_newsletter
    @chrome_driver.find_element(:id,'uniform-newsletter').click
  end

  def get_newsletter
    @chrome_driver.find_element(:id, 'uniform-newsletter').selected?
  end


  def input_special_offers_field
    @chrome_driver.find_element(:id,'uniform-optin').click
  end

  def get_special_offers_value
    @chrome_driver.find_element(:id,'uniform-optin').selected?
  end

  def clear_first_name_address
    @chrome_driver.find_element(:id, 'firstname').clear
  end

  def input_first_name_address(text)
    @chrome_driver.find_element(:id, 'firstname').send_keys(text)
  end

  def clear_last_name_address
    @chrome_driver.find_element(:id, 'lastname').clear
  end

  def input_last_name_address(text)
    @chrome_driver.find_element(:id, 'lastname').send_keys(text)
  end

  def input_company_field(text)
      @chrome_driver.find_element(:id, 'company').send_keys(text)
  end

  def get_company
    @chrome_driver.find_element(:name, 'company').attribute('value')
  end

  def input_address_field(text)
     @chrome_driver.find_element(:id, 'address1').send_keys(text)
  end

  def get_address
    @chrome_driver.find_element(:name, 'address1').attribute('value')
  end

  def input_city_field(text)
    @chrome_driver.find_element(:id, 'city').send_keys(text)
  end

  def get_city
    @chrome_driver.find_element(:name, 'city').attribute('value')
  end


  def input_state_field
  dropDownMenu4 = @chrome_driver.find_element(:id, 'id_state')
  option = Selenium::WebDriver::Support::Select.new(dropDownMenu4)
  option.select_by(:text, 'Florida')
  end

  def get_state
    @chrome_driver.find_element(:id, 'id_state').text.include?('Florida')
  end

  def input_postcode_field(text)
    @chrome_driver.find_element(:id, 'postcode').send_keys(text)
  end

  def get_postcode
    @chrome_driver.find_element(:name, 'postcode').attribute('value')
  end

  def input_country_field
  dropDownMenu5 = @chrome_driver.find_element(:id, 'id_country')
  option = Selenium::WebDriver::Support::Select.new(dropDownMenu5)
  option.select_by(:value, '21')
  end

  def get_country
  @chrome_driver.find_element(:id, 'id_country').text.include?('United States')
  end

  def input_mobile_phone(text)
    @chrome_driver.find_element(:id, 'phone_mobile').send_keys(text)
  end

  def get_mobile_phone
    @chrome_driver.find_element(:id, 'phone_mobile').attribute('value')
  end

  def clear_assigning
    @chrome_driver.find_element(:id, 'alias').clear
  end

  def input_assign_address(text)
    @chrome_driver.find_element(:id, 'alias').send_keys(text)
  end

  def click_register_button
    @chrome_driver.find_element(:id, 'submitAccount').click
  end


  def click_sign_out_button
    @chrome_driver.find_element(:class, 'logout').click
  end

  def input_sign_in_email(text)
    @chrome_driver.find_element(:id, 'email').send_keys(text)
  end

  def get_email
    @chrome_driver.find_element(:id, 'email').attribute('value')
  end

  def input_sign_in_password(text)
    @chrome_driver.find_element(:id, 'passwd').send_keys(text)
  end

  def input_sign_in_password_field(text)
    @chrome_driver.find_element(:id, 'passwd').send_keys(text)
  end

  def get_password
    @chrome_driver.find_element(:id, 'passwd').attribute('value')
  end

  def click_sign_in_button
    @chrome_driver.find_element(:id, 'SubmitLogin').click
  end

end



# test = SeleniumQA_yourLogo.new
# test.visit_your_logo
# test.visit_sign_in
# test.create_email_address("abinu.siva@hotmail.com")
# test.create_an_account
# sleep 3
# test.input_mr_field
# test.input_mrs_field
# test.enter_first_name("Abinu")
# sleep 3
# test.enter_last_name('Sivabalan')
# sleep 3
# test.clear_signed_up_email_value
# sleep 3
# test.input_signed_up_email_value("abinu.siva@hotmail.com")
# sleep 3
# test.enter_password('hiiii')
# sleep 3
# test.enter_dob_day('14')
# sleep 3
# test.enter_dob_month('10')
# sleep 3
# test.enter_dob_year('1995')
# sleep 3
# test.input_newsletter_field
# sleep 3
# test.input_special_offers_field
# sleep 3
# test.clear_first_name_address
# sleep 3
# test.input_first_name_address('Apina')
# sleep 3
# test.clear_last_name_address
# sleep 3
# test.input_last_name_address('Sivabalan')
# sleep 3
