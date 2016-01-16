def fruit_attributes(overrides = {})
  {
    name: "Apple",
    variety: "Fuji",
    color: "Red"
  }.merge(overrides)
end
