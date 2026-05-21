/* [Render] */
// Select what to render
render_choice = "fanbracket"; // [fanbracket:Fan bracket, frontbracket:Front bracket]

/* [Model dimensions] */
// Fan diameter in mm
fan_diameter = 120; // 0.1
// Fan width in mm
fan_width = 25; // 0.1
// Wall thickness in mm
wall_thickness = 3; // 0.1
// Filter width in mm
filter_width = 4; // 0.1

/* [Model detail] */
// Number of fragments, 0 means default
fn = 0; // 1

$fn = fn;

if (render_choice == "fanbracket") {
    fan_bracket();
} else if (render_choice == "frontbracket") {
    front_bracket();
} else {
    echo("Error: Invalid render choice");
}

module fan_bracket() {
    // Fan bracket
    difference() {
        union() {
            cube([fan_diameter + 2*wall_thickness, fan_diameter + 2*wall_thickness, fan_width + wall_thickness]);
            // Bracket base
            translate([-10, 0, 0]) difference() {
                cube([fan_diameter + 2*wall_thickness + 20, fan_diameter + 2*wall_thickness, wall_thickness]);
                // Mounting holes
                translate([5, 5, -1])
                cylinder(h = wall_thickness + 2, d=3.5);
                translate([20 + fan_diameter, 5, -1])
                cylinder(h = wall_thickness + 2, d=3.5);
                translate([5, fan_diameter, -1])
                cylinder(h = wall_thickness + 2, d=3.5);
                translate([20 + fan_diameter, fan_diameter, -1])
                cylinder(h = wall_thickness + 2, d=3.5);
            }
        }
        translate([wall_thickness, wall_thickness, wall_thickness])
        cube([fan_diameter, fan_diameter + 2*wall_thickness + 1, fan_width + 1]);
        translate([fan_diameter/2 + wall_thickness, fan_diameter/2 + wall_thickness, -1])
        cylinder(h=wall_thickness + 2, d=fan_diameter + 2);
    }

    // Filter bracket
    translate([0, 0, wall_thickness + fan_width])
    difference() {
        cube([fan_diameter + 2*wall_thickness, fan_diameter + 2*wall_thickness, filter_width + wall_thickness]);
        translate([wall_thickness, wall_thickness, wall_thickness])
        cube([fan_diameter, fan_diameter + 2*wall_thickness + 1, filter_width + wall_thickness]);
        translate([fan_diameter/2 + wall_thickness, fan_diameter/2 + wall_thickness, -1])
        cylinder(h=wall_thickness + 2, d=fan_diameter + 2);
    }

    // Filter back
    translate([0, 0, 2*wall_thickness + fan_width + filter_width])
    difference() {
        cube([fan_diameter + 2*wall_thickness, fan_diameter + 2*wall_thickness, wall_thickness]);
        translate([fan_diameter/2 + wall_thickness, fan_diameter/2 + wall_thickness, -1])
        cylinder(h=wall_thickness + 2, d=fan_diameter + 2);
    }
}

module front_bracket() {
    difference() {
        union() {
            cube([fan_diameter + 2*wall_thickness, fan_diameter + 2*wall_thickness, wall_thickness]);
            // Bracket base
            translate([-10, 0, 0]) difference() {
                cube([fan_diameter + 2*wall_thickness + 20, fan_diameter + 2*wall_thickness, wall_thickness]);
                // Mounting holes
                translate([5, 5, -1])
                cylinder(h = wall_thickness + 2, d=3.5);
                translate([20 + fan_diameter, 5, -1])
                cylinder(h = wall_thickness + 2, d=3.5);
                translate([5, fan_diameter, -1])
                cylinder(h = wall_thickness + 2, d=3.5);
                translate([20 + fan_diameter, fan_diameter, -1])
                cylinder(h = wall_thickness + 2, d=3.5);
            }
        }
        translate([fan_diameter/2 + wall_thickness, fan_diameter/2 + wall_thickness, -1])
        cylinder(h=wall_thickness + 2, d=fan_diameter + 2);
    }
}