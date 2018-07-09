require 'selenium-webdriver'
class SiteElement

  def initialize(url)
    @driver=Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    @driver.navigate.to url
  end
  def login_username()
    return @driver.find_element(:name,'uid')
  end
  def login_password()
    return @driver.find_element(:name,'password')
  end
  def submit_button()
    return @driver.find_element(:name,'btnLogin')
  end
   def link_newcustomer()
    return @driver.find_element(:link_text,'New Customer')
  end
  def close_browser()
    @driver.quit
  end
end