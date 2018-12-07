require 'selenium-webdriver'

describe 'Testing e-commerce using selenium' do
  before(:all) do

    @your_logo = Selenium_yourLogo.new
    @your_logo.visit_your_logo
    @wait = Selenium::WebDriver::Wait.new(timeout: 10)
    @generate = Generator.new
    @email = 'abinu.siva@hotmail.com'
    @first_name = @generate.first_name
    @last_name = @generate.second_name
    @password = 'Abinu123'

  end

  it "should go on the home page" do
    expect(@your_logo.current_url).to eq 'http://automationpractice.com/index.php'
  end

  it "should select the signup button" do
    @your_logo.visit_sign_in
    expect(@your_logo.current_url).to eq 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
  end

  it "should input email" do
    @your_logo.create_email_address(@email)
    expect(@your_logo.get_email_value).to eq @email
  end

  it "should create the account" do
    @your_logo.create_an_account
    sleep 3
    expect(@your_logo.current_url).to eq 'http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation'
  end

  it "should accept a title mr" do
    @your_logo.input_mr_field
    expect(@your_logo. get_mr_value).to be true
  end

  it "should accept a title mrs" do
    @your_logo.input_mrs_field
    expect(@your_logo. get_mrs_value).to be true
  end

  it 'should accept firstname' do
    @your_logo.enter_first_name(@first_name)
    expect(@your_logo.get_first_name).to eq @first_name
    sleep 5
  end

  it 'should accept lastname' do
    @your_logo.enter_last_name(@last_name)
    expect(@your_logo.get_last_name).to eq @last_name
    sleep 5
  end

  it "should be the email you signed up with" do
    @your_logo.clear_signed_up_email
    @your_logo.input_signed_up_email(@email)
    expect(@your_logo.get_signed_up_email).to eq @email
  end

  it "should accept the password" do
    @your_logo.enter_password(@password)
    expect(@your_logo.get_password).to eq @password
  end

  it "should accept a day for the date of birth" do
    @your_logo.enter_dob_day('14')
    expect(@your_logo.get_date_of_birth_day).to be true
  end

  it "should accept a month for the date of birth" do
    @your_logo.enter_dob_month('10')
    expect(@your_logo.get_date_of_birth_month).to be true
  end

  it "should accept a year for the date of birth" do
    @your_logo.enter_dob_year('1995')
    expect(@your_logo.get_date_of_birth_year).to be true
  end

  it "should accept newsletter" do
    @your_logo.input_special_offers
    expect(@your_logo.get_newsletter).to be false
  end

  it "should accept special offers" do
    @your_logo.get_special_offers
    expect(@your_logo.get_newsletter).to be false
  end

  it "should input first name in the address area" do
  @your_logo.clear_first_name_address
  @your_logo.input_first_name_address(@first_name)
  expect(@your_logo.get_first_name).to eq @first_name
end

it "should input last name in the address area" do
  @your_logo.clear_last_name_address
  @your_logo.input_last_name_address(@last_name)
  expect(@your_logo.get_last_name).to eq @last_name
end



end
