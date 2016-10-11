class NotifyMailer < ActionMailer::Base
  default from: "QPC Partners <no-reply@qpcpartners.com>"

  def notify_email(contact)
  	@contact = contact
  	mail(to: "chheiyasab@gmail.com", subject: "New message from #{contact.name}, #{contact.subject}")
  end
end

