$fn = 300;

difference() {
    cylinder(h = 75, d = 230);
    translate([0, 0, -1])
    cylinder(h = 77, d1 = 210, d2 = 160);
}