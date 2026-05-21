$fn = 100;

// Base
cylinder(h=3, d=30);
// Rod
translate([0, 0, 3])
cylinder(h=25, d=8);
// Top sphere
translate([0, 0, 35])
sphere(d=20);



