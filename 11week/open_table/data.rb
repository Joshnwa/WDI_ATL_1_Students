require "./restaurant"
require "./table"
require "./open_table"

def make_open_table
  OpenTable.new(
    [Restaurant.new("El Porton", "Mexican", 2, [
      Table.new(2, false),
      Table.new(4, true)
    ]),
    Restaurant.new("Over The Border", "Mexican", 1, [
      Table.new(2, false),
      Table.new(4, true),
      Table.new(5, false),
    ]),
    Restaurant.new("Dominick's", "Italian", 2, [
      Table.new(2, false),
      Table.new(2, true)
    ])
  ])
end
