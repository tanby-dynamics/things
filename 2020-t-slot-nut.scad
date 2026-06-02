$fn = 100;

// There are two kinds of 2020 extrusion, t-slot and a type with 
// a narrower slot, which can be identified by having 4mm holes 
// in the corners of the extrusion. This nut is designed to fit 
// t-slot extrusions.

nut();

module nut(height=10) {
    difference() {
        linear_extrude(height=height)
            profile();
        
        // Create the hole through the nut
        translate([5.5/2, 0, height/2])
        rotate([90, 0, 0])
            cylinder(h=height + 2, d=3.5, center=true);
        
        // Create a hexagon cutout on the top of the nut
        translate([5.5/2, 3.2, height/2])
        rotate([90, 0, 0])
            cylinder(h=2.6, d=7.1, center=true, $fn=6);
    }
}

module profile() {
    polygon(points=[
        [0, 0],
        [5.5, 0],
        [5.5, 1],
        [7.7, 1],
        [7.7, 2.2],
        [5.5, 4.4],
        [0, 4.4],
        [-2.2, 2.2],
        [-2.2, 1],
        [0, 1],
        [0, 0],
        [0, 0]
    ]);
}

/*
// https://logo2openscad.becdetat.com

polygon(points=[
    [0, 0],
    [5.5, 0],
    [5.5, 1],
    [7.7, 1],
    [7.7, 2.2],
    [5.5, 4.4],
    [0, 4.4],
    [-2.2, 2.2],
    [-2.2, 1],
    [0, 1],
    [0, 0],
    [0, 0]
]);

*/