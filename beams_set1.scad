include <parts.scad>;
translate([8, 0, 0])
    rotate([0, 0, 90])
        beam(9);
translate([18, 0, 0])
    rotate([0, 0, 90])
        beam(9);
translate([28, 0, 0])
    rotate([0, 0, 90])
        beam(9);
translate([38, 0, 0])
    rotate([0, 0, 90])
        beam(9);
translate([0, 100, 0])
    beam(15);
translate([0, 110, 0])
    beam(15);
translate([0, 120, 0])
    beam(15);
translate([0, 130, 0])
    beam(15);
translate([50, 10, 0])
    rotate([0, 0, 90])
        beam(11);
translate([60, 10, 0])
    rotate([0, 0, 90])
        beam(11);
translate([70, 10, 0])
    rotate([0, 0, 90])
        beam(11);
translate([80, 10, 0])
    rotate([0, 0, 90])
        beam(11);
translate([95, 10, 0])
    ninty_angled_beam(5,4);
translate([85, 0, 0])
    ninty_angled_beam(5,4);
//translate([85, 35, 0])
//    ninty_angled_beam(5,4);
//translate([85, 70, 0])
//    ninty_angled_beam(5,4);