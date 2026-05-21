$fn = 50;

difference() {
    minkowski() {
        translate([-15, -15, 0])
        cube([30, 30, 1]);
        cylinder(h=2, d=5);
    }
    translate([13, 13, -1]) cylinder(h=5, d=3.5);
    translate([-13, 13, -1]) cylinder(h=5, d=3.5);
    translate([13, -13, -1]) cylinder(h=5, d=3.5);
    translate([-13, -13, -1]) cylinder(h=5, d=3.5);
}

translate([0, 0, 3])
union() {
    difference() {
        cylinder(h=30, d=14);
        holder_translation() cylinder(h=40, d=16.5);
    }
    holder_translation() rounded_holder();
}


module holder_translation() {
    translate([0, 5, 22])
    rotate([45, 0, 0])
    translate([0, 0, 30])
    rotate([180, 0, 0])
    children();
}

module rounded_holder() {
    minkowski() {
        difference() {
            cylinder(h=40, d=18.5);
            translate([0, 0, -1])
            cylinder(h=42, d=16);
            hull() {
                translate([0, 0, 18.5])
                rotate([90, 0, 0])
                cylinder(h=10, d=12.5);
                rotate([90, 0, 0])
                cylinder(h=10, d=12.5);
            }
            translate([0, 10, 0])
            hull() {
                translate([0, 0, 15.5])
                rotate([90, 0, 0])
                cylinder(h=10, d=11);
                rotate([90, 0, 0])
                cylinder(h=10, d=11);
            }
        }
        sphere(0.5);
    }
}


