$fn = 100;

width = 26;
depth = 20;
height = 60;
standWidth = 50;
standBaseHeight = 20;

difference() {
    minkowski() {
        union() {
        cube([standWidth, depth, height], center = true);
        translate([0, 0, -height/2 + 5])
        cube([standWidth*1.5, depth, height/3], center = true);
        }
        sphere(d = 2.5);
    }
    translate([0, 0, standBaseHeight])
    cube([width, depth + 5, height], center = true);
}
    