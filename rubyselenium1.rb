require "selenium-webdriver"

#Chome browser instantiation
driver = Selenium::WebDriver.for :chrome

#Loading the Google URL
driver.navigate.to "http://www.google.lk"

#Typing the Selenium in Google search
SearchInput = driver.find_element(:id, "lst-ib")
SearchInput.send_keys "Selenium"

#Clicking the search button
SearchButton  = driver.find_element(:name, "btnK")
SearchButton.click

#Clicking the search button
GoogleLink  = driver.find_element(:link, "Selenium - Web Browser Automation")
GoogleLink.click

#Asserting whether the registration success message is diaplyed
SuccessMessage = driver.title
puts SuccessMessage

#Quitting the browser
driver.quit




