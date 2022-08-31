// load general Launch configs
include <./launch.scad>
// for printing face down
include <./upside_down.scad>

$font = "Font Awesome 6 Pro Solid";
$font_size = 5;

legends = [
  "delete-right", // Delete
  "delete-left" // Backspace
];

for(x = [0:len(legends)-1]) {
  translate_u(1.1 * x, 0) {
    legend(legends[x], [0, -1]) {
      key();
    }
  }
}
