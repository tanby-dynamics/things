$fn = 100;

translate([0, 36, 0]) mouse_suspension();
translate([18, 0, 0]) sticky_notes();
translate([72, 0, 0]) odds_and_sods();
translate([126, 0, 0]) fingerprint_sensor();

module mouse_suspension() {
    difference() {
        cube([20, 20, 100]);
        translate([10, 21, 100-5-2])
        rotate([90, 0, 0])
        cylinder(22, 5, 5);
        translate([10-1.5, -1, 100-2.5])
        cube([3, 22, 3]);
    }
}

module sticky_notes() {
    difference() {
        cube([56, 56, 42]);
        translate([2, 2, 2])
        cube([52, 52, 42]);
        translate([10+2, -1, 2])
        cube([30, 4, 42]);
    }
}

module odds_and_sods() {
    difference() {
        cube([56, 56, 22]);
        translate([2, 2, 2])
        cube([52, 52, 22]);
    }
}

module fingerprint_sensor() {
    difference() {
        cube([34, 39, 8]);
        translate([2, 2, 2])
        cube([30, 35, 7]);
        translate([34/2 - 5/2, 36, 2])
        cube([5, 4, 7]);
     }
 }
 

