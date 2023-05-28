/* Basic headphone holder */
$fn = 100;
height = 225;
headphoneWidth = 40;


base();
holder();

module base() {
    minkowski() {
        cylinder(h = 5, r = 75);
        sphere(2.5);
    }
}

module holder() {
    difference() {
        minkowski() {
            cylinder(h = height, r = headphoneWidth/2+8);
            sphere(2.5);
        }
        rotate([90, 0, 0])
        translate([0, height, -35])
        cylinder(h = 70, r = headphoneWidth/2);
    }
}