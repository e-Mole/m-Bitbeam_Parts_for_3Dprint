include <bitbeam_constants.scad>;

// Typical beam
module beam(length, width=1, start_x_hole=0, start_y_hole=0) {
    difference() {
        // the rounded cube
        translate([mink_r, mink_r, mink_r]) {
           minkowski() {
                cube([length*beam_element_length - 2*mink_r, width*beam_width - 2*mink_r, beam_height - 2*mink_r]);
                sphere(r=mink_r);
            };
        }
        // the holes
        for(x=[start_x_hole:1:length]) {
            for(y=[start_y_hole:1:width]) {
                union() {
                    translate([beam_element_length/2+x*hole_space, beam_width/2+y*hole_space, 0])                    cylinder(d=hole_diam, h=beam_height, $fn=30);
                    translate([beam_element_length/2+x*hole_space, beam_width+y*hole_space, beam_height/2]) 
                        rotate(a=[90, 0, 0])
                            cylinder(d=hole_diam, h=beam_width, $fn=30);
                }
            }
        }
    }
}

module ninty_angled_beam(length, width) {
    union() {
        beam(length);
        translate([beam_element_length, 0, 0])
            rotate(a=[0, 0, 90])
                beam(width);
    }
}

module more_90_angled_beam(length, width, angle=135) {
    union() {
        beam(length, start_x_hole=1);
        translate([-beam_element_length*cos(angle+90), -beam_element_length*sin(angle+90), 0])
            rotate(a=[0, 0, angle])
                beam(width, start_x_hole=1);
        translate([mink_r/2, mink_r, mink_r])
            cylinder(d=2*mink_r, h=beam_width-2*mink_r, $fn=30);
    }
}


        