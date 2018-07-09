require_relative 'loginPage.rb'
    #define new browser
browser=SiteElement.new("https://demo.guru99.com/v4/")

    #input user name
browser.login_username.send_keys('mngr142055')

    #input password
browser.login_password.send_keys('yvEjeja')

    #click on submit button
browser.submit_button.click

    #wait until the Logout link displays, timeout in 10 seconds
wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
wait.until {browser.link_newcustomer }

    #if logout link is displayed
isLogoutLinkDisplayed=browser.link_newcustomer.displayed?

puts isLogoutLinkDisplayed
browser.close_browser