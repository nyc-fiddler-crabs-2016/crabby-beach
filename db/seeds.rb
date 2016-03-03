ohope = Beach.create!(location: "Ohope")
hudson = Beach.create!(location: "Shore of the Hudson")
thames = Beach.create!(location: "Shore of the Thames")

sam = Crab.create!(name: "Sam", direction: "sideways", claw_size: 3, disposition: "sunny", beach: ohope)
chris = Crab.create!(name: "Chris", direction: "upwards", claw_size: 5, disposition: "cozy", beach: hudson)
steven = Crab.create!(name: "Steven", direction: "forward", claw_size: 4, disposition: "curious", beach: thames)
