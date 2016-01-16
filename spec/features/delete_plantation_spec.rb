require "rails_helper"

describe "Deleting a plantation" do
  it "destroys the plantation and shows the plantation listing without the deleted plantation" do
    plantation = Plantation.create!(name: "Plantation 1")

    visit plantation_path(plantation)
    expect(current_path).to eq(plantation_path(plantation))

    click_link 'Delete Plantation'
    expect(page).not_to have_text('Plantation 1')
  end
end
