require 'rails_helper'

describe User, type: :model do
  describe 'relationships' do
    it { should have_many :reviews  }
  end 

  describe 'class methods' do
    let!(:shelter) { create(:shelter, name: 'Best Test Shelter') }
    let!(:user) { create(:user, name: 'Jim') }
    let!(:review) { create(:review, title: 'Best Shelter!', rating: 4, 
                          content: 'Great!', shelter_id: shelter.id, user_id: user.id) }

    it '.reviews' do
      expect(user.reviews.first.id).to eq(review.id)
    end
  end
end
