// Stand for Doctor Who confession dial
// https://www.thingiverse.com/thing:1985657
$fn = 100;

difference() {
    translate([0, 0, 15])
    cylinder(h = 75, d = 15);
    translate([0, 0, 80])
    rotate([45, 0, 0])
    cylinder(h = 15, d = 120);
}
translate([0, 0, 1])
minkowski() {
    cylinder(h = 13, d = 120);
    sphere(d = 2);
}