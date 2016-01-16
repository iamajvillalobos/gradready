require "rails_helper"

describe "Editing a fruit" do
  it "updates the fruit and shows the fruit's details" do
    plantation = Plantation.create!(plantation_attributes)
    fruit = plantation.fruits.create!(fruit_attributes)

    visit plantation_fruit_path(plantation, fruit)

    click_link 'Edit Fruit'

    expect(current_path).to eq(edit_plantation_fruit_path(plantation, fruit))
    expect(find_field('Name').value).to eq(fruit.name)

    fill_in 'Name', with: 'Grapes'
    click_button 'Update Fruit'

    expect(current_path).to eq(plantation_fruit_path(plantation, fruit))
    expect(page).to have_text('Grapes')
  end
end
