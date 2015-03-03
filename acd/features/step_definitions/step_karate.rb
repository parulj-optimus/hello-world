

Given(/^I navigate to Google$/) do
@browser.goto "http://www.google.co.uk"
end

When(/^I enter (\w+) into the search field$/) do | karate |
  @browser.text_field(:name,'q').set karate
sleep(6)
@browser.button(:name,'btnG').click
end

Then(/^the text (\w+) should be present$/) do | surname |
  @browser.div(:id=>'resultStats').wait_until_present
(@browser.text.include? surname ).should==true
end

