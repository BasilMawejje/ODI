require 'rails_helper'

RSpec.describe BoardOfTrustee, type: :model do
  describe 'DB table' do
    it {is_expected.to have_db_column :name}
    it {is_expected.to have_db_column :description}
    it {is_expected.to have_db_column :image}
  end

  describe 'Factory' do
    it 'should be valid' do
      expect(FactoryBot.create(:board_of_trustee)).to be_valid
    end
  end
end
