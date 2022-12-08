# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews

  validates_presence_of     :username
  validates_uniqueness_of   :username

  validates_presence_of     :fName
  validates_presence_of     :lName

  # enum role maps the elements in the [] to the roles integers in the database. user = 1, moderator = 2 etc.
  enum role: %i[user admin]
  after_initialize :set_default_role, if: :new_record?
  def set_default_role
    self.role ||= :user
  end
end
