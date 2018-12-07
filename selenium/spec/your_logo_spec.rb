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
    @company = @generate.company_user
    @address = @generate.address_user
    @city = @generate.city_address
    @postcode = '86572'
    @number = '65169652646'

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

it "should accept a company name in the address area" do
    @your_logo.input_company_field(@company)
    expect(@your_logo.get_company).to eq @company
end

it "should accept a address in the address area" do
    @your_logo.input_address_field(@address)
    expect(@your_logo.get_address).to eq @address
    sleep 5
end

it "should accept a city in the address" do
    @your_logo.input_city_field(@city)
    expect(@your_logo. get_city).to eq @city
    sleep 5
end

it "should accept a postal code in the address" do
    @your_logo.input_postcode_field(@postcode)
    expect(@your_logo.get_postcode).to eq @postcode
end

it "should accept a state in the address" do
    @your_logo.input_state_field
    expect(@your_logo.get_state).to be true
end

it "should accept a country in the address" do
    @your_logo.input_country_field
    expect(@your_logo.get_country).to be true
end

it "should accept a mobile phone number in the address" do
    @your_logo.input_mobile_phone(@number)
    expect(@your_logo.get_mobile_phone).to eq @number
end

it "should input a first name in the address section" do
    @your_logo.clear_assigning
    @your_logo.input_assign_address(@address)
    expect(@your_logo.get_address).to eq @address
end

# it "should register the account succesfully" do
#   @your_logo.click_register_button
#   sleep 3
#   expect(@your_logo.current_url).to eq 'http://automationpractice.com/index.php?controller=my-account'
# end
#
# it "should sign you out" do
#   @your_logo.click_sign_out_button
#   sleep 3
#   expect(@your_logo.current_url).to eq 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
# end
#
# it "should succesfully sign you in with the registered email" do
#   @your_logo.input_assign_address(@email)
#   expect(@your_logo.get_email).to eq @email
# end
#
# it "should succesfully sign you in with the registered password" do
#   @your_logo.input_sign_in_password(@password)
#   expect(@your_logo.get_password).to eq @password
# end
#
# it "should succesfully sign you in with the registered account" do
#   @your_logo.click_sign_in_button
#   sleep 3
#   expect(@your_logo.current_url).to eq 'http://automationpractice.com/index.php?controller=my-account'
# end
#
# it "should sign you out" do
#   @your_logo.click_sign_out_button
#   sleep 3
#   expect(@your_logo.current_url).to eq 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
#   sleep 3
# end



end
