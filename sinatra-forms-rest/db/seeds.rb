Bird.destroy_all

bird_data = [
  {
    name: "Bobolink",
    call: "Tweet Tweet!",
    flavor: "Moose Tracks"
  },
  {
    name: "Cardinal",
    call: "Ca-Car!",
    flavor: "Pistachio"
  },
  {
    name: "Penguin",
    call: "Morgan!",
    flavor: "Rocky Road"
  }
]

Bird.create!(bird_data)
