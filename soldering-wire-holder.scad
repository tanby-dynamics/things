$fn = 100;

spoolH = 45;
spoolOd = 55;
spoolId = 16;

holder();
//rod();

module rod() {
    translate([0, 0, 1.5]) {
        translate([0, 0, 6])
        difference() {
            cylinder(h = spoolH + 30 + 5, d = spoolId - 0.5);
            cylinder(h = spoolH + 30 + 5 + 0.1, d = spoolId - 4);
        }
        minkowski() {
            cylinder(h=5, d = spoolId + 2);
            sphere(1.5);
        }
    }
}

module holder() {
    cube([spoolH + 30, spoolOd + 10, 15]);
    side();
    translate([spoolH + 20, 0, 0])
    side();

    // feeder
    translate([(spoolH)/2 + 10, -2.5, 0])
    difference() {
        union() {
            cube([10, 2.5, spoolOd/2 + 30]);
            rotate([90, 0, 0])
            translate([5, spoolOd/2 + 30, -2.5])
            cylinder(h = 2.5, d = 10);
        }
        rotate([90, 0, 0])
        translate([5, spoolOd + 2.5, -2.55])
        cylinder(h = 2.6, d = 3);
    }
}

module side() {
    translate([0, 0, (spoolOd + 10)/2 + 15])
    rotate([0, 90, 0])
    translate([0, (spoolOd + 10)/2, 0])
    difference() {
        union() {
            cylinder(h = 10, d = spoolOd + 10);
            translate([0, -spoolOd/2 - 5, 0])
            cube([(spoolOd + 10)/2, spoolOd + 10, 10]);
        }
        translate([0, 0, -0.05])
        cylinder(h = 10.1, d = spoolId);
    }
}


