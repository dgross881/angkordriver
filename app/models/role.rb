class Role < ApplicationRecord
  has_and_belongs_to_many :users

  validates :name, presence: true, uniqueness: { allow_blank: true }

  before_save { name.downcase! }
end

