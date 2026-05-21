// Drill guide for TD-MULT

/*
MAKE "hp 5.08
MAKE "ru 132.0

rt 90
fd 2*:hp
lt 90
fd :ru
lt 90
fd 2*:hp
lt 90
fd :ru

// Drop markers for screws
pu
seth 0
// Bottom
sety 5
setx :hp/2; extcommentpos; pd; arc 360, 0.5; pu
setx :hp/2 + :hp; extcommentpos; pd; arc 360, 0.5; pu
// Top
sety :ru - 5
setx :hp/2; extcommentpos; pd; arc 360, 0.5; pu
setx :hp/2 + :hp; extcommentpos; pd; arc 360, 0.5; pu

// Jacks
setxy :hp, :ru - 15;
seth 180
repeat 3 [
    repeat 4 [
        pd
        arc 360, 0.5
        pu
        extcommentpos
        fd 9
    ]
    fd 1.5
]
*/

$fn = 100;
screw_hole_diameter = 3.5;
jack_hole_diameter = 6.5;

difference() {
    linear_extrude(height=2.5) {
        polygon(points=[
            [0, 0],
            [10.16, 0],
            [10.16, 132],
            [0, 132],
            [0, 0],
            [0, 0]
        ]);
    }
    // Screw holes
    // translate([2.54, 5, -1])
    // cylinder(h=5, d=screw_hole_diameter);
    translate([7.62, 5, -1])
    cylinder(h=5, d=screw_hole_diameter);
    translate([2.54, 127, -1])
    cylinder(h=5, d=screw_hole_diameter);
    // translate([7.62, 127, -1])
    // cylinder(h=5, d=screw_hole_diameter);

    // Jack holes
    translate([5.08, 117, -1])
    cylinder(h=5, d=jack_hole_diameter);
    translate([5.08, 108, -1])
    cylinder(h=5, d=jack_hole_diameter);
    translate([5.08, 99, -1])
    cylinder(h=5, d=jack_hole_diameter);
    translate([5.08, 90, -1])
    cylinder(h=5, d=jack_hole_diameter);
    translate([5.08, 79.5, -1])
    cylinder(h=5, d=jack_hole_diameter);
    translate([5.08, 70.5, -1])
    cylinder(h=5, d=jack_hole_diameter);
    translate([5.08, 61.5, -1])
    cylinder(h=5, d=jack_hole_diameter);
    translate([5.08, 52.5, -1])
    cylinder(h=5, d=jack_hole_diameter);
    translate([5.08, 42, -1])
    cylinder(h=5, d=jack_hole_diameter);
    translate([5.08, 33, -1])
    cylinder(h=5, d=jack_hole_diameter);
    translate([5.08, 24, -1])
    cylinder(h=5, d=jack_hole_diameter);
    translate([5.08, 15, -1])
    cylinder(h=5, d=jack_hole_diameter);
}