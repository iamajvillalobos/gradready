require "rails_helper"

describe "Viewing a list of fruits" do
  it "shows the fruits for a specific plantation" do
    plantation1 = Plantation.create!(name: "Plantation 1")
    fruit1 = plantation1.fruits.create!(fruit_attributes(name: "Pickles"))
    fruit2 = plantation1.fruits.create!(fruit_attributes(name: "Orange"))

    plantation2 = Plantation.create!(name: "Plantation 2")
    fruit3 = plantation2.fruits.create!(fruit_attributes(name: "Banana"))

    visit plantation_url(plantation1)

    expect(page).to have_text(fruit1.name)
    expect(page).to have_text(fruit2.name)
    expect(page).not_to have_text(fruit3.name)
  end
end
