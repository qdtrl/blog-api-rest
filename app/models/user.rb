class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
		:jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  validates :email,
		presence: true

  has_many :articles
end
