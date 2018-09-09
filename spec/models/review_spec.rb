require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should belong_to(:author) }
  it { should belong_to(:book) }
  it { should validate_presence_of(:book) }
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:rating) }
end
