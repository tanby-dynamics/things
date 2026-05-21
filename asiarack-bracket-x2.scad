// This model is an end bracket for two sets of Asiarack rails as sold here:
// https://www.aliexpress.com/item/1005008613824790.html

// Mirror the STL for printing the opposite side bracket.
// This has a Minokowski chamfer to soften edges and help with printing.

// (C) 2026 Rebecca Scott - https://becdetat.com
// Licensed under the MIT license - see the LICENSE file for more information.

$fn = 100;

/* Polygons generated with logo2openscad.becdetat.com /*
/*
// Initialize
setxy 0, 0
seth 0

// Outer perimeter
pd
fd 80
lt 45
fd 132
rt 30
fd 132
lt 90
fd 70
lt 45
sety 0
setxy 0, 0
seth 0
pu

// Inner perimeter
make "frameWidth 15
setxy -:frameWidth, :frameWidth
pd
fd 80 - :frameWidth * 1.5
lt 45
fd 132
rt 30
fd 132 - :frameWidth * 0.75
lt 90
fd 70 - :frameWidth * 1.75
lt 45
sety :frameWidth
setxy -:frameWidth, :frameWidth
pu

// Mark out points for screw holes
setxy 0, 0
seth 0
fd 80
lt 45
fd 40
lt 90
fd :frameWidth / 2
extcommentpos [Screw hole 1]
bk :frameWidth / 2
rt 90
fd 132 - 40*2
lt 90
fd :frameWidth / 2
extcommentpos [Screw hole 2]
bk :frameWidth / 2
rt 90
fd 40
rt 30
fd 40
lt 90
fd :frameWidth / 2
extcommentpos [Screw hole 3]
bk :frameWidth / 2
rt 90
fd 132 - 40*2
lt 90
fd :frameWidth / 2
extcommentpos [Screw hole 4]
*/

thickness = 10;
screw_hole_diameter = 3.0;

difference() {
    minkowski() {
        sphere(2.0);
        difference() {
            linear_extrude(height = thickness)
            outer_perimeter();
            translate([0,0,-1])
            linear_extrude(height = thickness + 2)
            inner_perimeter();
        }
    }
    screw_holes();
}

// Outer perimeter
module outer_perimeter() {
    polygon(points=[
        [0, 0],
        [0, 80],
        [-93.338095, 173.338095],
        [-127.502209, 300.840304],
        [-195.117017, 282.722971],
        [-195.117017, 0],
        [0, 0]
    ]);
}

// Inner perimeter
module inner_perimeter() {
    polygon(points=[
        [-15, 15],
        [-15, 72.5],
        [-108.338095, 165.838095],
        [-139.590495, 282.473639],
        [-181.84975, 271.150305],
        [-181.84975, 15],
        [-15, 15]
    ]);
}

// The Asiarack linked above has chamfered holes for self-tapping screws, so we make some 3mm
// holes to suit - the screws it comes with are pretty small but 4gx12mm screws seem to work well.
// Change d to something like 3.5 and extend it through the bracket for clearance holes for M3 
// nuts and bolts.
module screw_holes() {
    // Screw hole 1: x=-33.587572, y=102.98097
    translate([-33.587572, 102.98097, 3])
    cylinder(h = thickness, d = screw_hole_diameter);

    // Screw hole 2: x=-70.357125, y=139.750523
    translate([-70.357125, 139.750523, 3])
    cylinder(h = thickness, d = screw_hole_diameter);

    // Screw hole 3: x=-110.935301, y=210.033985
    translate([-110.935301, 210.033985, 3])
    cylinder(h = thickness, d = screw_hole_diameter);

    // Screw hole 4: x=-124.393891, y=260.262128
    translate([-124.393891, 260.262128, 3])
    cylinder(h = thickness, d = screw_hole_diameter);
}

