// The stand for a digital microscope using 2040 extrusion as the vertical shaft
$fn = 100;

// Base plate
difference() {
    minkowski() {
        sphere(d=2);
        cube([200, 200, 6], center=true);
    }
    translate([85, 10, 0])
    cylinder(h=10, d=6, center=true);
    translate([85, -10, 0])
    cylinder(h=10, d=6, center=true);
}

// 2040 mount
translate([85, 0, 17]) {
    difference() {
        minkowski() {
            sphere(d=2);
            cube([20+10-2, 40+10-2, 30-2], center=true);
        }
        // 2040 shaft hole
        cube([20.5, 40.5, 32], center=true);

        // 2040 side screw holes
        translate([0, -10, 0])
        rotate([0, 90, 0])
        cylinder(h=35, d=3.2, center=true);
        translate([0, 10, 0])
        rotate([0, 90, 0])
        cylinder(h=35, d=3.2, center=true);
    }
}






