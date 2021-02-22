class User < ApplicationRecord
  has_many :socials, dependent: :destroy
  validates :username, presence: true, length: {minimum: 3, maximum: 25}, uniqueness: {case_sensitive: false}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 }, uniqueness: {case_sensitive: false }, format: { with: VALID_EMAIL_REGEX} 

  accepts_nested_attributes_for :socials, allow_destroy: true,
  reject_if: :all_blank
end
