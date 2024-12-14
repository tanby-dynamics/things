$fn = 300;

difference() {
    minkowski() {
        translate([0, 0, 5])
        cylinder(h=65, d=230);
        sphere(5);
    }
    translate([0, 0, -1])
    cylinder(h=77, d=170);
}