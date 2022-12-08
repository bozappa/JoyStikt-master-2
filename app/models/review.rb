# frozen_string_literal: true

class Review < ApplicationRecord
  validates :title, presence: true, length: { maximum: 150 }
  validates :body, presence: true, length: { maximum: 150 }
  belongs_to :user
end
