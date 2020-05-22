** Classes **
  -Dragon
  -Rider
  -Saddle**

** Model Domain **
Dragon ----< Saddle >---- Rider

Dragon has many Saddles
Dragon has many Riders, through Saddles

Rider has many Saddles
Rider has many Dragons, through Saddles

Saddle belongs to Dragon
Saddle belongs to Riders

** Attributes **
  -Dragon
    -name (string)
    -color (string)
    -sex (string)
    -magic (bool)
  -Rider
    -name (string)
  -Saddle
    -rider (instance)
    -dragon (instance)



** Deliverables **

Dragon#riders
  -Returns all the riders of that dragon instance

Rider#my_magical_dragons
  -Returns an array of all the **names** of magical dragons for a rider

Dragon.goth_girls_club
  -Returns all dragons that are either female or are the color black

Saddle.magic_butt_cushion
  -Returns all of the saddle instances where the dragon is magical

Dragon.not_monochromatic
  -Returns an array of dragon names where the color of the dragon are not monochromatic

Saddle.green_dragons_with_short_name_riders
  -Returns all of the saddle instances that have a green dragon with a rider that has a name 4 characters or less.

Rider#boy_dragons
  -Returns an array of the names of the boy dragons a rider rides.

Saddle.ridden_dragons
  -Returns a **unique** array of **names** of dragons that are ridden.

run_file all_instances
  -Returns an array of all of the dragon, saddle, and rider instances
