require "rails_helper"

describe "Viewing an individual plantation" do
  it "shows the plantation details" do
    plantation = Plantation.create!(name: "Plantation 1")

    visit plantation_path(plantation)

    expect(current_path).to eq(plantation_path(plantation))
    expect(page).to have_text(plantation.name)
  end
end
