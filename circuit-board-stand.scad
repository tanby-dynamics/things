// Circuit board stand
// This is a simple backing stand for a circuit board.
// width and length are the distances between the screw holes.
// Designed for threaded inserts, but you could reduce the
// standoffInsertDiameter to suit a self-threaded screw.

$fn = 100;

// For 90x150 perfboard
width = 82;
length = 135;

standoffDiameter = 5;
standoffHeight = 8;
standoffInsertDiameter = 4; // M3

translate([-5, -5, 0])
cube([width + 10, length + 10, 1.0]);
translate([0, 0, 1]) {
    translate([0, 0, 0]) standoff();
    translate([width, 0, 0]) standoff();
    translate([width, length, 0]) standoff();
    translate([0, length, 0]) standoff();
}

module standoff() {
    difference() {
        cylinder(h = standoffHeight, d = standoffHeight);
        translate([0, 0, -0.05])
        cylinder(
            h = standoffHeight + 0.1,
            d = standoffInsertDiameter
        );
    }
}


