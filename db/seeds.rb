Plantation.delete_all
Fruit.delete_all
Vegetable.delete_all

work_plantation = Plantation.create!(name: "Work")
home_plantation = Plantation.create!(name: "Home")

Fruit.create!([
  {
    name: "Apple",
    variety: "Fuji",
    color: "Red",
    plantation_id: home_plantation.id
  },
  {
    name: "Blueberry",
    variety: "Small",
    color: "Violet",
    plantation_id: work_plantation.id
  },
  {
    name: "Mango",
    variety: "Chausa",
    color: "Yellow",
    plantation_id: home_plantation.id
  }
])

Vegetable.create([
  {
    name: "Pea",
    variety: "Long",
    color: "Green",
    harvested_at: 2.months.ago,
    plantation_id: home_plantation.id
  },
  {
    name: "Wheatgrass",
    variety: "Thin",
    color: "Green",
    harvested_at: 1.month.ago,
    plantation_id: work_plantation.id
  }
])
