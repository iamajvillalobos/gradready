require "rails_helper"

describe "Deleting a vegetable" do
  it "destroys the vegetable and shows the vegetable listing without the delete plantation" do
      plantation = Plantation.create!(plantation_attributes)
      vegetable = plantation.vegetables.create!(vegetable_attributes)

      visit plantation_vegetable_path(plantation, vegetable)
      expect(current_path).to eq(plantation_vegetable_path(plantation, vegetable))

      click_link 'Delete Vegetable'
      expect(page).not_to have_text('Carrots')
  end
end
