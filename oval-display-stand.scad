$fn = 200;

stand_90x45();

module stand_90x70() {
    minkowski() {
        union() {
            scale([70/90, 1, 1])
            cylinder(h = 5, d = 90, center = true);

            translate([25, 0, 10-2.5])
            cube([5, 10, 10], center = true);

            translate([-15, 0, 55/2+2.5])
            cube([5, 20, 55], center = true);
        }
        sphere(0.5);
    }
}

module stand_90x45() {
    minkowski() {
        union() {
            scale([0.5, 1, 1])
            cylinder(h = 5, d = 90, center = true);

            translate([15, 0, 5])
            cube([2.5, 10, 5], center = true);

            translate([-5, 0, 35/2+2.5])
            cube([2.5, 10, 35], center = true);
        }
        sphere(0.5);
    }
}



