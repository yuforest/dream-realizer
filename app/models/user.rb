class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30}
  validates :email, presence: true, length: {maximum: 255},
                                  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_save { email.downcase!}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
  has_one :dream, dependent: :destroy
  validate :dream_size_validate
  
  def dream_size_validate
      errors.add("夢は1つしか設定できません") if self.dream != nil
  end
end
