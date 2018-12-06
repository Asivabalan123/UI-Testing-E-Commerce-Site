require 'selenium-webdriver'

class SeleniumQA_yourLogo

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

  def visit_sign_in
    @chrome_driver.find_element(:class, @sign_in).click
  end

  def create_email_address(text)
    @chrome_driver.find_element(:id, @create_email).send_keys(text)
  end

  def create_an_account
    @chrome_driver.find_element(:id, @create_an_account).click
  end

  def input_mr_field
    @chrome_driver.find_element(:id, @gender_mr).click
  end

  def input_mrs_field
    @chrome_driver.find_element(:id, @gender_mrs).click
  end

  def enter_first_name(text)
    @chrome_driver.find_element(:id, @first_name).send_keys(text)
  end

  def enter_last_name(text)
    @chrome_driver.find_element(:id, @last_name).send_keys(text)
  end

  def clear_signed_up_email_value
    @chrome_driver.find_element(:id, 'email').clear
  end

  def input_signed_up_email_value(text)
    @chrome_driver.find_element(:id, 'email').send_keys(text)
  end

  def enter_password(text)
    @chrome_driver.find_element(:id, @password).send_keys(text)
  end

  def enter_dob_day(text)
    dropDown = @chrome_driver.find_element(:id, @days)
    option = Selenium::WebDriver::Support::Select.new(dropDown)
    option.select_by(:value, '14')
  end

  def enter_dob_month(text)
    dropDown = @chrome_driver.find_element(:id, @months)
    option = Selenium::WebDriver::Support::Select.new(dropDown)
    option.select_by(:value, '10')
  end

  def enter_dob_year(text)
    dropDown = @chrome_driver.find_element(:id, @years)
    option = Selenium::WebDriver::Support::Select.new(dropDown)
    option.select_by(:value, '1995')
  end

  def enter_first_name(text)
    @chrome_driver.find_element(:id, @first_name).send_keys(text)
  end

  def enter_last_name(text)
    @chrome_driver.find_element(:id, @last_name).send_keys(text)
  end




end



test = SeleniumQA_yourLogo.new
test.visit_your_logo
test.visit_sign_in
test.create_email_address("abinu.siva@hotmail.com")
test.create_an_account
sleep 3
test.input_mr_field
test.input_mrs_field
test.enter_first_name("Abinu")
sleep 3
test.enter_last_name('Sivabalan')
sleep 3
test.clear_signed_up_email_value
sleep 3
test.input_signed_up_email_value("abinu.siva@hotmail.com")
sleep 3
test.enter_password('hiiii')
sleep 3
test.enter_dob_day('14')
sleep 3
test.enter_dob_month('10')
sleep 3
test.enter_dob_year('1995')
sleep 3
test.enter_first_name('Abinu')
sleep 3
test.enter_last_name('Sivabalan')
