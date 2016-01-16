require "rails_helper"

describe "A fruit" do
  it "belongs to a plantation" do
    plantation = Plantation.create!(plantation_attributes)
    fruit = plantation.fruits.new(fruit_attributes)
    expect(fruit.plantation).to eq(plantation)
  end

  it "requires a name" do
    fruit = Fruit.new(name: "")
    fruit.valid?
    expect(fruit.errors[:name].any?).to eq(true)
  end

  it "requires a variety" do
    fruit = Fruit.new(variety: "")
    fruit.valid?
    expect(fruit.errors[:variety].any?).to eq(true)
  end

  it "requires a color" do
    fruit = Fruit.new(color: "")
    fruit.valid?
    expect(fruit.errors[:color].any?).to eq(true)
  end
end
