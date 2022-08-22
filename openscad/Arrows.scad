include <./launch.scad>

$font = "Font Awesome 6 Pro Solid";
$font_size = 4.5;

legends = [
  "up",
  "down",
  "left",
  "right"
];

for(x = [0:len(legends)-1]) {
  translate_u(1.1 * x, 0) {
    legend(legends[x], [0, -1]) {
      key();
    }
  }
}
