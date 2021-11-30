class ApplicationMailer < ActionMailer::Base
  default to: 'js02575@surrey.ac.uk', from: 'info@example.com'
  layout 'mailer'
end
