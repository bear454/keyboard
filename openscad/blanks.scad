// load general Launch configs
include <./launch.scad>
// for printing face down
include <./upside_down.scad>

// set the width of key to generate
key_size = 1.0;

if (key_size == 1.0) {
  key();
}

if (key_size == 1.5) {
  1_5u() key();
}

if (key_size == 2.0) {
  $stem_positions = [
    [0,0],
    [-12, 0],
    [12, 0]
  ];
  2u() key();
}
