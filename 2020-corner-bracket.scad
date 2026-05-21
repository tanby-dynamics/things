$fn = 100;

bracket_side();
translate([4, 0, 0]) rotate([0, 270, 0]) bracket_side();

// add a trianglular support
translate([4, 0, 0]) rotate([0, 270, 270]) bracket_angle();
translate([4, 16, 0]) rotate([0, 270, 270]) bracket_angle();

module bracket_angle() {
    // Hacky polygon...
    linear_extrude(height=4)
    polygon(
        points=[
            [0,0],
            [20,0],
            [4, 16]
        ],
        paths=[
            [0,1,2]
        ]
    );
}


module bracket_side() {
    difference() {
        cube([20, 20, 4]);
        translate([12, 10, -0.1]) cylinder(h=6, d=3.5);
    }
}




