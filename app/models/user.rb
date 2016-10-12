class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_and_belongs_to_many :roles

  def has_role?(role_name)
    roles.any? { |r| r.name.underscore.to_sym == role_name.to_sym }
  end
end
