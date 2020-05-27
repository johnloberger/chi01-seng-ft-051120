Finding.destroy_all
User.destroy_all
Mushroom.destroy_all

pat = User.create(name: "Patton", fav_color: "green")
rose = User.create(name: "Rosetta", fav_color: "purple")
nate = User.create(name: "Nate", fav_color: "blue")

mu_mo = Mushroom.create(species: "morel", habitat: "midwest")
mu_sh = Mushroom.create(species: "shittake", habitat: "cool places")
mu_ps = Mushroom.create(species: "psilocybin", habitat: "northwest")
mu_up = Mushroom.create(species: "1-up", habitat: "Japan")

Finding.create(user_id: pat.id, mushroom_id: mu_sh.id, notes: "thought this was a **** ********* tweet at first")
Finding.create(user_id: pat.id, mushroom_id: mu_ps.id, notes: "tripped over this one on accident")
Finding.create(user_id: rose.id, mushroom_id: mu_up.id, notes: "hidden block get!")