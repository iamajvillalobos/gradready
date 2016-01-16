require "rails_helper"

describe "Editing a vegetable" do
  it "updates the vegetable and shows the vegetable's details" do
    plantation = Plantation.create!(plantation_attributes)
    vegetable = plantation.vegetables.create!(vegetable_attributes)

    visit plantation_vegetable_path(plantation, vegetable)

    click_link 'Edit Vegetable'

    expect(current_path).to eq(edit_plantation_vegetable_path(plantation, vegetable))
    expect(find_field('Name').value).to eq(vegetable.name)

    fill_in 'Name', with: 'Lettuce'
    click_button 'Update Vegetable'

    expect(current_path).to eq(plantation_vegetable_path(plantation, vegetable))
    expect(page).to have_text('Lettuce')
  end
end
