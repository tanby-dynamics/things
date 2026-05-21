$fn = 100;

module bracket_poly() {
    polygon(points=[
        [0, 0],
        [0, 34],
        [152, 34],
        [152, 0],
        [162, 0],
    // Marker: x=162, y=0
        [167, 0],
        [167, 2],
        [154, 2],
        [154, 36],
        [-2, 36],
        [-2, 2],
        [-15, 2],
        [-15, 0],
        [-10, 0],
    // Marker: x=-10, y=0
        [0, 0],
        [0, 0]
    ]);
}

module bracket() {
    difference() {
        linear_extrude(height=10) 
        bracket_poly();
        translate([-10, 3, 5])
        rotate([90, 0, 0])
        cylinder(h = 5, d = 3);
        translate([162, 3, 5])
        rotate([90, 0, 0])
        cylinder(h = 5, d = 3);
    }
}

bracket();

// Bracket with back plate
translate([0, 50, 0]) {
    bracket();
    linear_extrude(height=1)
    square([152, 34]);
}

/*
// https://logo2openscad.becdetat.com/
make "width 200
make "height 40

pd
fd :height
rt 90
fd :width
rt 90
fd :height
lt 90
fd 10
EXTMARKER
fd 5
lt 90
fd 2
lt 90
fd 15 - 3
rt 90
fd :height
lt 90
fd :width + 3 + 3
lt 90
fd :height
rt 90
fd 15 - 3
lt 90
fd 3
lt 90
fd 5
EXTMARKER
fd 10
*/