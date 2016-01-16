require "rails_helper"

describe "Deleting a fruit" do
  it "destroys the fruit and shows the fruit listing without the delete plantation" do
      plantation = Plantation.create!(plantation_attributes)
      fruit = plantation.fruits.create!(fruit_attributes)

      visit plantation_fruit_path(plantation, fruit)
      expect(current_path).to eq(plantation_fruit_path(plantation, fruit))

      click_link 'Delete Fruit'
      expect(page).not_to have_text('Apple')
  end
end
