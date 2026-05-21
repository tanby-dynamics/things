$fn = 150;

translate([-5, 35, 0]) mouse_suspension();
translate([30, 28, 0]) pen_holder();
translate([28, 0, 0]) odds_and_sods_cutout();

module mouse_suspension() {
    translate([0, 0, 1]) difference() {
        minkowski() {
            cube([20, 20, 99]);
            sphere(1);
        }
        translate([10, 21.6, 100-5-2])
        rotate([90, 0, 0])
        cylinder(23, 5, 5);
        translate([10-1.5, -1, 100-2.5])
        cube([3, 22, 3]);
    }
}

module pen_holder() {
    translate([0, 0, 1])
    minkowski() {
        difference() {
            cylinder(h=70, r=30);
            translate([0, 0, 2])
            cylinder(h=99, r=29);
        }
        sphere(1);
    }
}

module odds_and_sods_cutout() {
    difference() {
        odds_and_sods();
        translate([0, 28, -1]) cylinder(h=70, r=32);
    }
}

module odds_and_sods() {
    translate([0, 0, 1])
    minkowski() {
        difference() {
            cube([136, 56, 22]);
            translate([1, 1, 1])
            cube([134, 54, 22]);
        }
        sphere(1);
    }
}

 

