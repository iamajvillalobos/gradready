require "rails_helper"

describe "Editing a plantation" do
  it "updates the plantation and shows the plantation updated details" do
    plantation = Plantation.create!(name: "Plantation 1")

    visit plantation_path(plantation)

    click_link 'Edit Plantation'

    expect(current_path).to eq(edit_plantation_path(plantation))

    fill_in 'Name', with: 'Plantation 2'
    click_button 'Update Plantation'

    expect(current_path).to eq(plantation_path(plantation))
    expect(page).to have_text('Plantation 2')
  end
end
