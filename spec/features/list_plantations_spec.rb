require "rails_helper"

describe "Viewing list of plantations" do
  it "shows a list of plantations" do
    plantation1 = Plantation.create!(name: "Plantation 1")
    plantation2 = Plantation.create!(name: "Plantation 2")

    visit plantations_url

    expect(page).to have_link(plantation1.name)
    expect(page).to have_link(plantation2.name)
  end
end
