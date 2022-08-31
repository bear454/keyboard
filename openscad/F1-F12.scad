// load general Launch configs
include <./launch.scad>

$font = "Ubuntu Mono:style=Bold";
$font_size = 4;

legends = ["F 1", "F 2", "F 3", "F 4", "F 5", "F 6", "F 7", "F 8", "F 9", "F 1 0", "F 1 1", "F 1 2"];
l2_legends = [
  // "", // F1
  // "", // F2
  // "", // F3
  // "", // F4
  // "", // F5
  // "", // F6
  // "", // F7
  // "", // F8
  // "keyboard-brightness-low", // F9
  // "keyboard-brightness", // F10
  // "expand", // F11
  // "calculator-simple", // F12
];

for(x = [0:len(legends)-1]) {
  translate_u(1.1 * x, 0) {
    legend(legends[x], [0, -1]) {
      legend(l2_legends[x], [0, 1], size = 3.5) {
        key();
      }
    }
  }
}
