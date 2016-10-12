class NotifyMailer < ActionMailer::Base
  def notify_email(contact)
  	@contact = contact
  	mail(to: "chheiyasab@gmail.com", from: contact.email, subject: "New message from #{contact.name}, #{contact.subject}")
  end
end

