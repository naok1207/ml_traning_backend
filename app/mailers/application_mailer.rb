class ApplicationMailer < ActionMailer::Base
  default from: ENV.fetch('SMTP_USER_NAME', nil)
  layout 'mailer'
end
