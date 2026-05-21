// A simple base plate for mounting models etc.
$fn = 200;

//rect_plate(150, 150, 15);
round_plate(90, 10);

module rect_plate(length, width, height) {
    minkowski() {
        cube([length - 4, width - 4, height - 4]);
        sphere(2.0);
    }
}

module round_plate(diameter, height) {
    minkowski() {
        cylinder(h = height - 4, d = diameter - 4);
        sphere(2.0);
    }
}
