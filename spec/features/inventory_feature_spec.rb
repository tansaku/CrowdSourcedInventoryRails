require 'rails_helper'

describe 'CrowdSourcedInventory' do

  it 'has no inventory items when created' do
    visit '/inventory'
    expect(page).to have_content "No items bro, man up and add something!"
  end

  it 'can create new inventory items' do
    visit '/inventory/new'

    fill_in :name, with: 'Banana'
    fill_in :description, with: 'Yummy!'

    press 'Create Inventory'

    expect(current_path).to eq '/inventory'
    expect(page).to have_content "Banana"
    expect(page).to have_content "Yummy!"
  end


end

