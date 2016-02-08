require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

describe "No" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.crowdcompass.com/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end
  
  after(:each) do
    @driver.quit
    @verification_errors.should == []
  end
  
  it "test_no" do
    @driver.get(@base_url + "/")
    @driver.find_element(:link, "Login").click
    @driver.find_element(:link, "Facebook").click
    @driver.find_element(:id, "email").clear
    @driver.find_element(:id, "email").send_keys "<facebook_email>"
    @driver.find_element(:id, "pass").clear
    @driver.find_element(:id, "pass").send_keys "<facebook_password>"
    @driver.find_element(:id, "u_0_2").click
    @driver.find_element(:link, "Crowdcompass Test's account").click
  end
  
  def element_present?(how, what)
    ${receiver}.find_element(how, what)
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end
  
  def alert_present?()
    ${receiver}.switch_to.alert
    true
  rescue Selenium::WebDriver::Error::NoAlertPresentError
    false
  end
  
  def verify(&blk)
    yield
  rescue ExpectationNotMetError => ex
    @verification_errors << ex
  end
  
  def close_alert_and_get_its_text(how, what)
    alert = ${receiver}.switch_to().alert()
    alert_text = alert.text
    if (@accept_next_alert) then
      alert.accept()
    else
      alert.dismiss()
    end
    alert_text
  ensure
    @accept_next_alert = true
  end
end
