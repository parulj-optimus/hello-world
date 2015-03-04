 require 'watir-webdriver'

Given(/^I log in to GroundWork Portal$/) do
@browser = Watir::Browser.new :ff
@browser.goto "qa-rh6-64-2/"
@browser.text_field(:name,'josso_username').set 'admin'
@browser.text_field(:name,'josso_password').set 'admin'
@browser.button(:value,'Login').click

end

When(/^I navigate to AutoDiscovery module$/) do
  @browser.link(:text => /Auto Discovery/).when_present.click

end

When(/^I give a range name$/) do
  @browser.frame(:id,'myframe').text_field(:name,'filter_name').when_present.set 'avi'

end

When(/^I add a range pattern$/) do
  @browser.frame(:id,'myframe').text_field(:name => /filter_value/).when_present.set '127.0.0.1'
end

When(/^I click on the Add Range Button$/) do
  @browser.frame(:id,'myframe').button(:name,'add_filter').click
sleep(3)
end

Then(/^Host should be added successfully$/) do
@browser.frame(:id,'myframe').button(:value => 'Go >>').click
@browser.frame(:id,'myframe').checkbox(:value,'accept').set
sleep(2)
@browser.frame(:id,'myframe').button(:value => 'Go >>').click

sleep(35)
@browser.frame(:id,'myframe').button(:value,'Close').click
  @browser.link(:text => /Status/).when_present.click
sleep(3)
@browser.link(:text => /Search/).when_present.click
sleep(3)
@browser.text_field(:id,'frmTree:pnlTbSet:0:STtxtSearchQuery').set '127.0.0.1'
@browser.div(:id,'frmTree:pnlTbSet:0:STpanelsSearchPage').button(:value,'Go').click
@browser.close
end



