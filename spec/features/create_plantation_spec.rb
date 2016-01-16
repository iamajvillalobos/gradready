require "rails_helper"

describe "Creating a new plantation" do
  it "saves the plantation and shows the new plantation details" do
    visit plantations_url

    click_link 'Add new plantation'

    expect(current_path).to eq(new_plantation_path)

    fill_in 'Name', with: 'Plantation 1'
    click_button 'Create Plantation'

    expect(current_path).to eq(plantation_path(Plantation.last))
    expect(page).to have_text('Plantation 1')
  end
end
