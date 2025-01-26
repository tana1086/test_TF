class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :trackable and, :timeoutable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  has_one :profile, dependent: :destroy
end
