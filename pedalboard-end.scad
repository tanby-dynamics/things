$fn = 50;

difference() {
    // outer
    linear_extrude(height=15) {
        polygon(points=[
            [0, 0],
            [0, 22],
            [140.059245, 59.528762],
            [144.389372, 57.028762],
            [144.389372, 0],
            [0, 0]
        ]);
    }

    // // inner
    translate([0, 0, 5])
    linear_extrude(height=15) {
        polygon(points=[
            [8.693332, 19.329371],
            [136.195542, 53.493485],
            [139.560189, 40.93645],
            [12.05798, 6.772336],
            [8.693332, 19.329371],
            [8.693332, 19.329371]
        ]);
    }

    // Marker: x=20.034914, y=15.639044
    translate([20.034914, 15.639044, -1])
    cylinder(h = 10, d = 3);

    // Marker: x=63.501577, y=27.285901
    translate([63.501577, 27.285901, -1])
    cylinder(h = 10, d = 3);

    // Marker: x=82.820093, y=32.462282
    translate([82.820093, 32.462282, -1])
    cylinder(h = 10, d = 3);

    // Marker: x=126.286755, y=44.109139
    translate([126.286755, 44.109139, -1])
    cylinder(h = 10, d = 3);
}





/*
// https://logo2openscad.becdetat.com
// outer
pendown
fd 5 + 12 + 5
rt 75
fd 10 + 65*2 + 10 - 5
rt 45
fd 5
sety 0
setx 0

seth 0

pu
fd 5 + 12
rt 75
fd 9

// inner
pd
fd 65*2 + 2
rt 90
fd 12 + 1
rt 90
fd 65*2 + 2
rt 90
fd 12 + 1

pu
setxy 0, 0
seth 0

// markers
fd 5 + 12
rt 75
fd 9
rt 90
fd 6.5
lt 90
fd 10
extmarker
fd 65 - 20
extmarker
fd 20
extmarker
fd 65 - 20
extmarker
*/