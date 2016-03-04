ohope = Beach.create!(location: "Ohope")
hudson = Beach.create!(location: "Shore of the Hudson")
thames = Beach.create!(location: "Shore of the Thames")

sam = Crab.create!(name: "Sam", password: "password", direction: "sideways", claw_size: 3, disposition: "sunny", beach: ohope)
chris = Crab.create!(name: "Chris", password: "password", direction: "upwards", claw_size: 5, disposition: "cozy", beach: hudson)
steven = Crab.create!(name: "Steven", password: "password", direction: "forward", claw_size: 4, disposition: "curious", beach: thames)
