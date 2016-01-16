def plantation_attributes(overrides = {})
  {
    name: "Plantation 1"
  }
end

def fruit_attributes(overrides = {})
  {
    name: "Apple",
    variety: "Fuji",
    color: "Red"
  }.merge(overrides)
end
