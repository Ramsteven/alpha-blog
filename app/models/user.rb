class User < ApplicationRecord
  validates :name, presence: true, length: {minimum: 2, maximum: 100}
  validates :description, presence: true, length: {minimum: 2, maximum: 300}
  validates :twitter, presence: true, length: {minimum: 2, maximum: 100}
  validates :facebook, length: {minimum: 2, maximum: 100}
  validates :instagram, length: {minimum: 2, maximum: 100}
end
