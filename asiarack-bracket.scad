$fn = 100;


/* Polygons generated with logo2openscad.becdetat.com /*
/*
// Outer perimeter
fd 80
lt 45
fd 132
lt 90
fd 70
lt 45
sety 0
setxy 0, 0
seth 0

// Inner perimeter
make "frameWidth 10
pu
setxy -:frameWidth, 10
pd
fd 80 - :frameWidth * 1.5
lt 45
fd 132 - :frameWidth * 1.5
lt 90
fd 70 - :frameWidth * 1.5
lt 45
sety :frameWidth
setxy -:frameWidth, :frameWidth
*/

thickness = 10;

// Make it pretty
minkowski() {
    sphere(1.0);
    difference() {
        linear_extrude(height = thickness)
        outer_perimeter();
        translate([0,0,-1])
        linear_extrude(height = thickness + 2)
        inner_perimeter();
    }
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
        [-10, 10],
        [-10, 75],
        [-92.731493, 157.731493],
        [-131.622366, 118.84062],
        [-131.622366, 10],
        [-10, 10]
    ]);
}
