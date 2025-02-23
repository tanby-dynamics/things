$fn = 100;

difference() {
    cube([335, 125, 2]);
    translate([20, 20, -1])
    cube([110, 70, 4]);
    translate([170, 20, -1])
    cube([110, 70, 4]);

    translate([129, 20+70+7, -1])
    cube([20, 20, 4]);
    translate([151, 20+70+7, -1])
    cube([20, 20, 4]);
}
