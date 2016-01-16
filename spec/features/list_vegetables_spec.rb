require "rails_helper"

describe "Viewing a list of vegetables" do
  it "shows the vegetables for a specific plantation" do
    plantation1 = Plantation.create!(name: "Plantation 1")
    vegetable1 = plantation1.vegetables.create!(vegetable_attributes(name: "Cabbage"))
    vegetable2 = plantation1.vegetables.create!(vegetable_attributes(name: "Dill"))

    plantation2= Plantation.create!(name: "Plantation 2")
    vegetable3 = plantation2.vegetables.create!(vegetable_attributes, name: "Lettuce")

    visit plantation_url(plantation)

    expect(page).to have_text(vegetable1.name)
    expect(page).to have_text(vegetable2.name)
    expect(page).not_to have_text(vegetable3.name)
  end
end
