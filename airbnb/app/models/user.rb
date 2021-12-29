class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :admin, dependent: :destroy
  has_many :rent, dependent: :destroy
  has_one :profile, dependent: :destroy

  def is_admin?
    Admin.find_by(user_id: self.id).present?
  end

  def profile
    Profile.find_by(user_id: self.id)
  end
end
