$fn = 100;

screw_hole_d = 3.5;

//scale([0.95, 0.95, 0.95])
//cleat_final();
hook_final();

module hook_final() {
    translate([70, -85, 0])
    cube([10, 200, 22]);

    translate([30.1, 105, 0.1])
    cube([40, 10, 22]);

    translate([20.1, -15, 0.1])
    linear_extrude(22)
    polygon([
        [0, 0],
        [0, 60],
        [0, 120],
        [10, 130],
        [10, 0]
    ]);

    difference() {
        union() {
            translate([0.1, -15, 0.1])
            cube([20, 60, 22]);
        }

        cleat();
    }
}

module cleat_final() {
    difference() {
        cleat();
        union() {
            // screw holes
            translate([-1, 5, 10])
            rotate([0, 90, 0])
            cylinder(h = 20, r = screw_hole_d / 2);
            translate([-1, 25, 10])
            rotate([0, 90, 0])
            cylinder(h = 20, r = screw_hole_d / 2);
            // screw heads
            translate([6, 5, 10])
            rotate([0, 90, 0])
            cylinder(h = 4.1, r1 = screw_hole_d / 2, r2 = 5);
            translate([6, 25, 10])
            rotate([0, 90, 0])
            cylinder(h = 4.1, r1 = screw_hole_d / 2, r2 = 5);
        }
    }
}

module cleat() {
    linear_extrude(20)
    polygon([
        [0,0],
        [10,-10],
        [10, 40],
        [0, 30]
    ]);
}