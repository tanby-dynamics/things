// This model is an end bracket for Asiarack rails as sold here:
// https://www.aliexpress.com/item/1005008613824790.html

// Mirror the STL for printing the opposite side bracket.
// This has a Minokowski chamfer to soften edges and help with printing.

// (C) 2025 Rebecca Scott - https://becdetat.com
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
fd 132 - :frameWidth * 1.5
lt 90
fd 70 - :frameWidth * 1.5
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
*/

thickness = 10;

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
        [-142.83557, 123.84062],
        [-142.83557, 0],
        [0, 0]
    ]);
}

// Inner perimeter
module inner_perimeter() {
    polygon(points=[
        [-15, 15],
        [-15, 72.5],
        [-92.428193, 149.928193],
        [-126.015765, 116.34062],
        [-126.015765, 15],
        [-15, 15]
    ]);
}

// The Asiarack linked above has chamfered holes for self-tapping screws, so we make some 2mm
// holes to suit - the screws it comes with are pretty small but 4gx12mm screws seem to work well.
// Change d to something like 3.5 and extend it through the bracket for clearance holes for M3 
// nuts and bolts.
module screw_holes() {
    translate([-33.587572, 102.98097, 3])
    cylinder(h = thickness, d = 2);
    translate([-70.357125, 139.750523, 3])
    cylinder(h = thickness, d = 2);
}

