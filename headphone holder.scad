/* Basic headphone holder */
$fn = 100;
height = 225;
headphoneWidth = 40;


base();
holder();

module base() {
    cylinder(h = 5, r = 75);
}

module holder() {
    difference() {
        cylinder(h = height, r = headphoneWidth/2+5);
        rotate([90, 0, 0])
        translate([0, height, -30])
        cylinder(h = 60, r = headphoneWidth/2);
    }
}