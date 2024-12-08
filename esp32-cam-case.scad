// This is a simple case for an ESP32-CAM module, including
// the ESP32-CAM-M8 USB hat

$fn = 100;


difference() {
    union() {
        cube([34, 44, 14]);
    }
    translate([1, 1, 10])
    cube([32, 42, 10]);
    translate([2, 2, 2])
    cube([30, 40, 20]);
    // camera cutout
    translate([17, 13, -1])
    cylinder(h = 4, d = 10);
}

translate([40, 0, 0]) base();

module base() {
    difference() {
        union() {
            cube([34, 44, 10]);
            translate([1, 1, 0])
            cube([32, 42, 14]);
        }
        translate([2, 2, 2])
        cube([30, 40, 20]);
        // USB
        translate([34/2-6, -1, -1])
        cube([12, 4, 7]);
    }
}