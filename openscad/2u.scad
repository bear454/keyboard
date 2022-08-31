// load general Launch configs
include <./launch.scad>
// for printing face down
include <./upside_down.scad>

$font = "Font Awesome 6 Pro Solid";
$font_size = 4;

// triple stem
$stem_positions = [
  [0,0],
  [-12, 0],
  [12, 0]
];

legends = [
  "up-from-line", // Left shift
  "", // Left space
  "" // Right space
];

for(x = [0:len(legends)-1]) {
  translate_u(0, -1.1 * x) {
    legend(legends[x], [0, -1]) {
      2u() key();
    }
  }
}
