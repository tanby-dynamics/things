// Rod clamp. This doesn't do anything by itself, so you
// would glue something else to it. Like another rod clamp.
// This is set up for a 6.5mm rod, an M5 bolt, and a push
// fit threaded insert.
// Rotate it 90 degrees on the X axis to print with no supports.
$fn = 100;

rodD = 6.52;

difference() {
    cube([40, 20, 15]);
    
    // Rod
    rotate([90, 0, 0])
    translate([15, 7.5, -20.05])
    cylinder(h = 20.1, d = rodD);
    
    // Cut
    translate([-0.05, -0.05, 7.5-0.5])
    cube([16.1, 20.1, 1]);
    
    // M5
    translate([6, 10, -0.05])
    cylinder(h = 15.1, d  = 5.1);
    
    // M5 threaded insert
    translate([6, 10, -0.05])
    cylinder(h = 5.05, d = 6.5);
}


