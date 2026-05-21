$fn = 100;

// Apply Minkowski to soften edges
minkowski() {
    sphere(r=0.5); // Small sphere to round edges
    union() {
        bracket_side();
        translate([3.5, 0, 0]) rotate([0, 270, 0]) bracket_side();

        // Add a triangular support
        translate([3.5, 0, 0]) rotate([0, 270, 270]) bracket_angle();
        translate([3.5, 16, 0]) rotate([0, 270, 270]) bracket_angle();
    }
}

module bracket_angle() {
    // Hacky polygon...
    linear_extrude(height=3)
    polygon(
        points=[
            [0,0],
            [19,0],
            [3.5, 15.5]
        ],
        paths=[
            [0,1,2]
        ]
    );
}

module bracket_side() {
    difference() {
        cube([19, 19, 3.5]);
        translate([12, 10, -0.1]) cylinder(h=6, d=4.5);
    }
}




