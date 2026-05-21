
/*
make "wallThickness 3
make "corfluteThickness 5
make "bracketWidth 50

make "innerWidth :bracketWidth - (:wallThickness + :corfluteThickness + :wallThickness)

pd
fd :bracketWidth
rt 90; fd :wallThickness
rt 90; fd :innerWidth
lt 90; fd :corfluteThickness
lt 90; fd :innerWidth
rt 90; fd :wallThickness
rt 90; fd :innerWidth
lt 90; fd :innerWidth
rt 90; fd :wallThickness
rt 90; fd :innerWidth
lt 90; fd :corfluteThickness
lt 90; fd :innerWidth
rt 90; fd :wallThickness
rt 90; fd :bracketWidth
*/

$fn = 100;

difference() {
    bracket();

    // M4 holes
    translate([-3, (50+11)/2, 50/4]) rotate([0, 90, 0]) screw_hole();
    translate([-3, (50+11)/2, 50*3/4]) rotate([0, 90, 0]) screw_hole();
    translate([(50+11)/2, -3, 50/4]) rotate([270, 0, 0]) screw_hole();
    translate([(50+11)/2, -3, 50*3/4]) rotate([270, 0, 0]) screw_hole();
}

module bracket() {
    linear_extrude(height = 50)
    bracket_shape();
}

module bracket_shape() {
    polygon(points=[
        [0, 0],
        [0, 50],
        [3, 50],
        [3, 11],
        [8, 11],
        [8, 50],
        [11, 50],
        [11, 11],
        [50, 11],
        [50, 8],
        [11, 8],
        [11, 3],
        [50, 3],
        [50, 0]
    ]);
}

module screw_hole() {
    cylinder(h=15, d=4.5);
}