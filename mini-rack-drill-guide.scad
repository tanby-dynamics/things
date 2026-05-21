$fn = 100;

// This is a ~250mm long drill guide for the 40mm aluminium bar that serves as the side of the
// 10" mini rack, with holes for both extrusion nuts and M6 bolts at standard rack unit spacing.
// - For a 500mm tall rack, print this part and a mirror of this part.
// - Use the drill guide to mark or punch holes with a center punch 
// - Drill out the extrusion bolt holes with a 3mm drill bit
// - Drill out the M6 bolt holes with a 5mm drill bit and tap with an M6 tap

ru = 44.45;  // one rack unit in mm
spacing = ru / 6 * 2;  // standard spacing for M6 holes

difference() {
    cube([40, spacing*16 + spacing / 2, 1]);

    // Drill guides for extrusion nuts
    translate([10, 10, -0.1]) {
        translate([0, 0, 0]) hole_guide();
        translate([0, 15, 0]) hole_guide();
        translate([0, spacing*16 + spacing / 2 - 35, 0]) hole_guide();
        translate([0, spacing*16 + spacing / 2 - 20, 0]) hole_guide();
    }

    // Drill guides for M6 bolts
    translate([30, spacing, -0.1]) {
        translate([0, spacing * 0, 0]) hole_guide();
        translate([0, spacing * 1, 0]) hole_guide();
        translate([0, spacing * 2, 0]) hole_guide();
        translate([0, spacing * 3, 0]) hole_guide();
        translate([0, spacing * 4, 0]) hole_guide();
        translate([0, spacing * 5, 0]) hole_guide();
        translate([0, spacing * 6, 0]) hole_guide();
        translate([0, spacing * 7, 0]) hole_guide();
        translate([0, spacing * 8, 0]) hole_guide();
        translate([0, spacing * 9, 0]) hole_guide();
        translate([0, spacing * 10, 0]) hole_guide();
        translate([0, spacing * 11, 0]) hole_guide();
        translate([0, spacing * 12, 0]) hole_guide();
        translate([0, spacing * 13, 0]) hole_guide();
        translate([0, spacing * 14, 0]) hole_guide();
        translate([0, spacing * 15, 0]) hole_guide();
    }
}

module hole_guide() {
    cylinder(h=3, d=2, center=true);
}