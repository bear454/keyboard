// load general Launch configs
include <./launch.scad>
// for printing face down
include <./upside_down.scad>

$font = "Font Awesome 6 Pro Solid";
$font_size = 4;

legends = [
  "grid-2", // Super/Meta/Windows
  "bars", // Menu
  "alt", // Left Alt
  "link-horizontal", // Right Alt (Compose)
  "square-2" // layer switch
];

for(x = [0:len(legends)-1]) {
  translate_u(1.1 * x, 0) {
    legend(legends[x], [0, -1]) {
      key();
    }
  }
}
