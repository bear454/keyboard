// load general Launch configs
include <./launch.scad>
// for printing face down
include <./upside_down.scad>

$font = "Font Awesome 6 Pro Solid";
$font_size = 4;

// Home with Play/Pause on layer 2
// PgUp with Volume Up on Layer 2
// PgDn with Volume Down on Layer 2
// End with Mute on Layer 2
legends = ["left-to-line", "PgUp", "PgDn", "right-to-line"];
fonts = ["Font Awesome 6 Pro Solid", "Ubuntu Mono:style=Bold", "Ubuntu Mono:style=Bold", "Font Awesome 6 Pro Solid"];
l2_legends = ["play-pause", "volume-high", "volume-low", "volume-xmark"];

for(x = [0:len(legends)-1]) {
  translate_u(1.1 * x, 0) {
    legend(legends[x], [0, -1], font = fonts[x]) {
      legend(l2_legends[x], [0, 1]) {
        key();
      }
    }
  }
}
