include <./launch.scad>

$font = "Font Awesome 6 Pro Solid";
$font_size = 4;

legends = [
  "command", // Left Ctrl
  "grid-2", // Super/Meta/Windows
  "alt", // Left Alt
  "link-horizontal", // Right Alt (Compose)
  "bars" // Menu (in lieu of Right Ctrl)
];

for(x = [0:len(legends)-1]) {
  translate_u(1.1 * x, 0) {
    legend(legends[x], [0, -1]) {
      key();
    }
  }
}
