# Bombardier CRJ700 series
# Nasal door system
# Modified by Narendran Muraleedharan for the FFC
#################################################

var doors =
 {
 new: func(name, transit_time)
  {
  doors[name] = aircraft.door.new("sim/model/door-positions/" ~ name, transit_time);
  },
 toggle: func(name)
  {
  doors[name].toggle();
  },
 open: func(name)
  {
  doors[name].open();
  },
 close: func(name)
  {
  doors[name].close();
  },
 setpos: func(name, value)
  {
  doors[name].setpos(value);
  }
 };
doors.new("pax-left", 3);
doors.new("pax-right", 3);
doors.new("flight-deck", 1);
doors.new("overhead-bins", 2);
doors.new("seat", 2);
