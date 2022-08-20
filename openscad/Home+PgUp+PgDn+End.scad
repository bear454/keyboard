// load general Launch configs
include <./launch.scad>

$font = "Font Awesome 6 Pro Solid";
$font_size = 4;

// Home with Play/Pause on layer 2
// PgUp with Volume Up on Layer 2
// PgDn with Volume Down on Layer 2
// End with Mute on Layer 2
legends = ["left-to-line", "page-caret-up", "page-caret-down", "right-to-line"];
l2_legends = ["play-pause", "volume-high", "volume-low", "volume-xmark"];

for(x = [0:len(legends)-1]) {
  translate_u(1.1 * x, 0) {
    legend(legends[x], [0, -1]) {
      legend(l2_legends[x], [0, 1], size = 3.5) {
        key();
      }
    }
  }
}
