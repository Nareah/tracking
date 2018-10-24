class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :transactions
  has_one :card
  belongs_to :company

  attr_accessor :tax_exemption

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
