// Drill guide for TD-MULT
$fn = 100;

difference() {
    linear_extrude(height=1) {
        polygon(points=[
            [0, 0],
            [10.16, 0],
            [10.16, 132],
            [0, 132],
            [0, 0],
            [0, 0]
        ]);
    }
    translate([2.54, 5, -1])
    cylinder(h=3, d=2);
    translate([2.54, 5, -1])
    cylinder(h=3, d=2);
    translate([7.62, 5, -1])
    cylinder(h=3, d=2);
    translate([2.54, 127, -1])
    cylinder(h=3, d=2);
    translate([7.62, 127, -1])
    cylinder(h=3, d=2);
    translate([5.08, 117, -1])
    cylinder(h=3, d=2);
    translate([5.08, 108, -1])
    cylinder(h=3, d=2);
    translate([5.08, 99, -1])
    cylinder(h=3, d=2);
    translate([5.08, 90, -1])
    cylinder(h=3, d=2);
    translate([5.08, 79.5, -1])
    cylinder(h=3, d=2);
    translate([5.08, 70.5, -1])
    cylinder(h=3, d=2);
    translate([5.08, 61.5, -1])
    cylinder(h=3, d=2);
    translate([5.08, 52.5, -1])
    cylinder(h=3, d=2);
    translate([5.08, 42, -1])
    cylinder(h=3, d=2);
    translate([5.08, 33, -1])
    cylinder(h=3, d=2);
    translate([5.08, 24, -1])
    cylinder(h=3, d=2);
    translate([5.08, 15, -1])
    cylinder(h=3, d=2);
}