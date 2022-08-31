// load general Launch configs
include <./launch.scad>
// for printing face down
include <./upside_down.scad>

$font = "Font Awesome 6 Pro Solid";
$font_size = 4;

legends = [
  "indent", // Tab
  "square-a-lock", // Caps
  "turn-down-left", // Enter
  "up-from-line", // Right shift,
  "command", // Left Ctrl
  "square-3" // Layer 3
];
size = [
  4,
  3.9,
  4.5,
  4,
  4,
  4
];


for(x = [0:len(legends)-1]) {
  translate_u(0, -1.1 * x) {
    legend(legends[x], [0, -1], size = size[x]) {
      1_5u() key();
    }
  }
}
