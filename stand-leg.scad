/* [Render] */
// Number of fragments, 0 means default
fn = 100; // 1
$fn = fn;

/* [Dimensions] */
// Total height of stand in mm
height = 140; // 0.1
// Length of bracket in mm
bracketLength = 80; // 0.1
// Width of stand in mm
standWidth = 30; // 0.1
// Thickness of bracket in mm
bracketThickness = 5; // 0.1
// Number of screw holes
screw_count = "two"; // [one:One, two:Two, none:None]
// Diameter of holes in mm
holeDiameter = 5; // 0.1

// Render:
// stand
cube([standWidth, standWidth, height]);
// bracket 1
translate([standWidth, 0, 0])
bracket1();
// bracket 2
rotate([0, 0, 90])
translate([standWidth, -standWidth, 0])
bracket2();

module bracket1() {
    difference() {
        union() {
            cube([bracketLength, standWidth, bracketThickness]);
        
            //brace
            difference() {
                cube([bracketLength, bracketThickness, bracketLength]);
                rotate([90, 0, 0])
                translate([bracketLength, bracketLength, -bracketThickness - 0.5])
                cylinder(h=bracketThickness + 1.0, r=bracketLength);
            }
        }
        if (screw_count == "one") {
            one_hole();
        } else if (screw_count == "two") {
            two_holes();
        } else if (screw_count == "none") {
            // No holes
        } else {
            echo("Error: Invalid screw count");
        }
    }
}

module bracket2() {
    difference() {
        union() {
            cube([bracketLength, standWidth, bracketThickness]);
        
            //brace
            difference() {
                translate([0, standWidth-bracketThickness, 0])
                cube([bracketLength, bracketThickness, bracketLength]);
                rotate([90, 0, 0])
                translate([bracketLength, bracketLength, - standWidth - 0.5])
                cylinder(h=bracketThickness + 1.0, r=bracketLength);
            }
        }
        if (screw_count == "one") {
            one_hole();
        } else if (screw_count == "two") {
            two_holes();
        } else if (screw_count == "none") {
            // No holes
        } else {
            echo("Error: Invalid screw count");
        }
    }
}

module one_hole() {
    translate([bracketLength - standWidth/2, standWidth/2, -0.5])
    cylinder(h=bracketThickness+1.0, d=holeDiameter);
}

module two_holes() {
    translate([standWidth/2, standWidth/2, -0.5])
    cylinder(h=bracketThickness+1.0, d=holeDiameter);
    translate([bracketLength - standWidth/2, standWidth/2, -0.5])
    cylinder(h=bracketThickness+1.0, d=holeDiameter);
}