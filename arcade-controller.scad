$fn = 100;

controllerDiameter = 12;
buttonDiameter = 30;
smallButtonDiameter = 24;
shellThickness = 2;
y = 45;
x = 35; // 55;
boxHeight = 40;
chassisX = 230;
chassisY = 150;

translate([0, 0, boxHeight - shellThickness])
difference() {
    cube([chassisX, chassisY, shellThickness]);
    
    translate([x, y, 0]) controller();
    
    // top row
    translate([x + 70, y + 25, 0]) button();
    translate([x + 70 + 33, y + 25 + 14]) button();
    translate([x + 70 + 33 + 36, y + 25 + 14]) button();
    translate([x + 70 + 33 + 36 + 33, y + 25 + 14 - 7, 0]) button();
    
    // bottom row
    translate([x + 70, y - 14, 0]) button();
    translate([x + 70 + 33, y, 0]) button();
    translate([x + 70 + 33 + 36, y, 0]) button();
    translate([x + 70 + 33 + 36 + 33, y - 14 + 7, 0]) button();
    
    // small buttons
    translate([x + 70, y + 80, 0]) small_button();
    translate([x + 70 + 33, y  + 80, 0]) small_button();
}

cube([chassisX, shellThickness, boxHeight]);
translate([0, chassisY, 0])
cube([chassisX, shellThickness, boxHeight]);
//cube([shellThickness, chassisY, boxHeight]);
translate([chassisX, 0, 0])
cube([shellThickness, chassisY, boxHeight]);

module controller() {
    translate([0, 0, -0.1])
    cylinder(h = shellThickness + 0.2, d = controllerDiameter);
}

module button() {
    translate([0, 0, -0.1])
    cylinder(h = shellThickness + 0.2, d = buttonDiameter);
}

module small_button() {
    translate([0, 0, -0.1])
    cylinder(h = shellThickness + 0.2, d = smallButtonDiameter);
}
