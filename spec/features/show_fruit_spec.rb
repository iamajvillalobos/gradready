require "rails_helper"

describe "Viewing an individual fruit" do
  it "shows the fruit details" do
    plantation = Plantation.create!(plantation_attributes)
    fruit = plantation.fruits.create!(fruit_attributes)

    visit plantation_path(plantation)
    click_link fruit.name

    expect(current_path).to eq(plantation_fruit_path(plantation, fruit))
    expect(page).to have_text(fruit.name)
    expect(page).to have_text(fruit.variety)
    expect(page).to have_text(fruit.color)
  end
end
