require 'rails_helper'

describe 'user can visit snack show' do
  it 'shows information about the snack' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    snack_1 = dons.snacks.create(name: "Burger", price: 3)

    visit snack_path(snack_1)
save_and_open_page
    expect(current_path).to eq(snack_path(snack_1))
    expect(page).to have_content(snack_1.name)
    expect(page).to have_content(snack_1.price)

  end
end
