require 'rails_helper'

RSpec.describe 'Reviews API', type: :request do
  let(:user) { create(:user) }
  let!(:reviews) { create_list(:review, 10, author_id: user.id) }
  let(:review_id) { reviews.first.id }
  let(:headers) { valid_headers }

  describe 'GET /reviews' do
    before { get '/reviews', headers: headers }

    it 'returns reviews' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end