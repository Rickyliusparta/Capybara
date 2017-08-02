require 'capybara'

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app,:browser => :firefox)
end

session = Capybara::Session.new(:firefox)

session.visit('https://spartaglobal.slack.com/messages/G5997D94K/team/')

session.fill_in 'email', with: 'rliu@spartaglobal.co'
session.fill_in 'password', with: ''

session.find(:css, '#signin_btn').click
sleep 10


session.visit('https://spartaglobal.slack.com/messages/@oholden/')

# session.find(:css, '#direct_message_header')
# session.find(:css, '.new_dm_btn').click 
# sleep 10
# session.fill_in 'search', with: 'oholden'



