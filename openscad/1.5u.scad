include <./launch.scad>

$font = "Font Awesome 6 Pro Solid";
$font_size = 4;

legends = [
  "indent", // Tab
  "square-a-lock", // Caps
  "turn-down-left", // Enter
  "up-from-line", // Right shift
  "square-2", // Layer 2
  "square-3" // Layer 3
];

for(x = [0:len(legends)-1]) {
  translate_u(1.6 * x, 0) {
    legend(legends[x], [0, -1]) {
      1_5u() key();
    }
  }
}
