// Circuit board stand
// This is a simple backing stand for a circuit board.
// width and length are the distances between the screw holes.
// Designed for threaded inserts, but you could reduce the
// standoffInsertDiameter to suit a self-threaded screw.
$fn = 100;

thickness = 2.0;

// For 90x150 perfboard
width = 90;
standoffXOffset = 4;
length = 150;
standoffYOffset = 7;

standoffDiameter = 8;
standoffHeight = 8;
standoffInsertDiameter = 4.0; // M3

translate([10, 10, 0]) {
    board();
    translate([0, 0, thickness]) standoffs();
}

module standoffs() {
    standoffX = width - 2*standoffXOffset;
    standoffY = length - 2*standoffYOffset;
    
    translate([0, 0, 0]) standoff();
    translate([standoffX, 0, 0]) standoff();
    translate([standoffX, standoffY, 0]) standoff();
    translate([0, standoffY, 0]) standoff();
}

module board() {
    translate([-10, -10, 0])
    cube([width + 10, length + 10, thickness]);
}

module standoff() {
    difference() {
        cylinder(h = standoffHeight, d = standoffDiameter);
        translate([0, 0, -0.05])
        cylinder(
            h = standoffHeight + 0.1,
            d = standoffInsertDiameter
        );
    }
}


