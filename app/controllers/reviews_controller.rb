class ReviewsController < ApplicationController
  def index
    json_response(current_user.reviews, :ok)
  end
end
