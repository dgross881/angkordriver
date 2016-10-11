class Contact < ApplicationRecord

  with_options presence: true do
    validates :subject, :message, :name, :email
  end
end
