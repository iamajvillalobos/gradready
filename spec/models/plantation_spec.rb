require "rails_helper"

describe "A plantation" do
  it "requires a name" do
    plantation = Plantation.new(name: "")
    plantation.valid?
    expect(plantation.errors[:name].any?).to eq(true)
  end
end
