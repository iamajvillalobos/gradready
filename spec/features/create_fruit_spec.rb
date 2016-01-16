require "rails_helper"

describe "Creating a fruit" do
  it "saves the fruit" do
    plantation = Plantation.create!(plantation_attributes)

    visit plantation_path(plantation)

    click_link 'Add Fruit'

    expect(current_path).to eq(new_plantation_fruit_path(plantation))

    fill_in "Name", with: "Orange"
    fill_in "Variety", with: "Ponkan"
    fill_in "Color", with: "Orange"

    click_button 'Create Fruit'

    expect(current_path).to eq(plantation_path(plantation))
    expect(page).to have_text('Orange')
  end
end
