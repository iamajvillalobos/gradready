require "rails_helper"

describe "Creating a vegetable" do
  it "saves the vegetable" do
    plantation = Plantation.create!(plantation_attributes)

    visit plantation_path(plantation)

    click_link 'Add Vegetable'

    expect(current_path).to eq(new_plantation_vegetable_path(plantation))

    fill_in "Name", with: "Cabbage"
    fill_in "Variety", with: "Iceberg"
    fill_in "Color", with: "Green"
    select (Time.now.year - 1).to_s, from: "vegetable[harvested_at(1i)]"

    click_button 'Create Vegetable'

    expect(current_path).to eq(plantation_path(plantation))
    expect(page).to have_text('Cabbage')
  end
end
