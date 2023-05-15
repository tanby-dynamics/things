/* Basic headphone holder */

base();
holder();

module base() {
    cylinder(h = 5, r = 75);
}

module holder() {
    difference() {
        cylinder(h = 200, r = 15);
        rotate([90, 0, 0])
        translate([0, 200, -20])
        cylinder(h = 40, r = 10);
    }
}