include <parts.scad>;
/*
beam(3);
translate([0, 10, 0])
    beam(3);
translate([0, 20, 0])
    beam(3);
translate([0, 30, 0])
    beam(3);
translate([0, 40, 0])
    beam(5);
translate([0, 50, 0])
    beam(5);
translate([0, 60, 0])
    beam(5);
translate([0, 70, 0])
    beam(5);
translate([0, 80, 0])
    beam(5);
translate([0, 90, 0])
    beam(5);
*/
translate([0, 100, 0])
    beam(7);
translate([0, 110, 0])
    beam(7);
translate([0, 120, 0])
    beam(7);
translate([0, 130, 0])
    beam(7);
translate([0, 140, 0])
    beam(7);
translate([0, 150, 0])
    beam(7);
//translate([0, 160, 0])
//    beam(9);
//translate([0, 170, 0])
//    beam(9);
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
translate([30, 0, 0])
    ninty_angled_beam(5,4);
translate([85, 0, 0])
    ninty_angled_beam(5,4);
//translate([85, 35, 0])
//    ninty_angled_beam(5,4);
//translate([85, 70, 0])
//    ninty_angled_beam(5,4);