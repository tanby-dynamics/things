$fn = 100;

// There are two kinds of 2020 extrusion, t-slot and a type with 
// a narrower slot, which can be identified by having 4mm holes 
// in the corners of the extrusion. This nut is designed to fit 
// that type of extrusion.

nut();

module nut(length=10, width=8, height=3.9, hole_diameter=3.5, nut_diameter=6.9, nut_depth=2.2) {
    difference() {
        // Create the main body of the nut
        union() {
            // Main rectangular body
            cube([length, width, height], center=true);
            // Flange on the bottom
            // translate([0, 0, -height/2 - 1.0/2])
            //     cube([length, 5, 1.0], center=true);
        }
        
        // Create the hole through the nut
        translate([0, 0, -1]) // Extend the hole slightly below the nut
            cylinder(h=height + 2, d=hole_diameter, center=true);
        
        // Create a hexagon cutout on the top of the nut
        translate([0, 0, height/2 - nut_depth/2 + 0.01])
            cylinder(h=nut_depth, d=nut_diameter, center=true, $fn=6);
    }
}