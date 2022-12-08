# frozen_string_literal: true

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'review should have a title' do
    review = Review.new
    assert_not review.save, 'Review saved without a title'
  end
end
