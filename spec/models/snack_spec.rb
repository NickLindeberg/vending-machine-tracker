require 'rails_helper'

describe Snack, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :price }
    it { should belong_to :machine }
  end


  describe 'class methods' do
    it '.avg_price' do
      owner = Owner.create(name: "Sam's Snacks")
      dons  = owner.machines.create(location: "Don's Mixed Drinks")
      snack_1 = dons.snacks.create(name: "Burger", price: 6)
      snack_2 = dons.snacks.create(name: "Burger", price: 4)
      avg_price = Snack.avg_price

      expect(avg_price).to eq(5)
    end
  end
end
