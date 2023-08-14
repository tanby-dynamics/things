$fn = 100;

dishDiameter = 100;
potDiameter = 60;
height = 10;

difference() {
    cylinder(h = height, d = dishDiameter);

    translate([0, 0, 2.01])
    cylinder(h = height - 2, d1 = potDiameter, d2 = dishDiameter - 5);
}