require "rails_helper"

describe "A vegetable" do
  it "belongs to a plantation" do
    plantation = Plantation.create!(plantation_attributes)
    vegetable = plantation.vegetables.new(vegetable_attributes)
    expect(vegetable.plantation).to eq(plantation)
  end

  it "requires a name" do
    vegetable = Vegetable.new(name: "")
    vegetable.valid?
    expect(vegetable.errors[:name].any?).to eq(true)
  end

  it "requires a variety" do
    vegetable = Vegetable.new(variety: "")
    vegetable.valid?
    expect(vegetable.errors[:variety].any?).to eq(true)
  end

  it "requires a color" do
    vegetable = Vegetable.new(color: "")
    vegetable.valid?
    expect(vegetable.errors[:color].any?).to eq(true)
  end

  it "requires a harvested date" do
    vegetable = Vegetable.new(harvested_at: "")
    vegetable.valid?
    expect(vegetable.errors[:harvested_at].any?).to eq(true)
  end

end
