$fn = 100;

difference() {
    minkowski() {
        cube([150, 150, 10]);
        cylinder(h=10, d=20);
    }

    for (x = [0:10]) {
        for (y = [0:10]) {
            translate([x * 15, y * 15, -1])
            cylinder(h=22, d=2.8);  // for 2.5mm wire
        }
    }
}


