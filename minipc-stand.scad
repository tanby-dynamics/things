$fn = 100;

width = 37;
depth = 100;
height = 40;
standWidth = 60;
standBaseHeight = 5;

difference() {
    minkowski() {
        union() {
        cube([standWidth, depth, height], center = true);
        translate([0, 0, -height/2 + standBaseHeight])
        cube([standWidth*1.5, depth, height/3], center = true);
        }
        sphere(d = 2.5);
    }
    translate([0, 0, standBaseHeight])
    cube([width + 5, depth + 5, height], center = true);
}
    