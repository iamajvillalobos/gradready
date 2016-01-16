def plantation_attributes(overrides = {})
  {
    name: "Plantation 1"
  }.merge(overrides)
end

def fruit_attributes(overrides = {})
  {
    name: "Apple",
    variety: "Fuji",
    color: "Red"
  }.merge(overrides)
end

def vegetable_attributes(overrides = {})
  {
    name: "Carrots",
    variety: "Artist",
    color: "Peach",
    harvested_at: Date.today + 1.week
  }.merge(overrides)
end
