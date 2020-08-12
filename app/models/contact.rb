class Contact < ApplicationRecord

  validates :user_name, presence: true
  validates :ruby, presence: true, format: {with: /\A[ァ-ヶー－]+\z/}
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: { case_sensitive: false }
  validates :tel, presence: true, format: { with: /\A\d{10}$|^\d{11}\z/ }
  validates :contents, presence: true

end
