class ApplicationMailer < ActionMailer::Base
  default to: 'js02575@surrey.ac.uk', from: 'info@mynotes.com'
  layout 'mailer'
end
