mouse_suspension();

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
