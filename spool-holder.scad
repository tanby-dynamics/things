// spool-holder.stl is generated using a bracket thickness of 2mm.
// spool-holder-2.stl has a bracket thickness of 5mm, which is a bit more heavy-duty.
// This is made to be used with a dowel rod of around 21mm diameter. I use two of them
// to hang small spools of wire next to my workbench.

$fn = 200;

holderHeight = 70; // total height
holderWidth = 20;
holderLength = 50;
rodDiameter = 21;
bracketLength = 30;
bracketWidth = 20;
bracketThickness = 5;   // set to 2 for a lighter-weight version
screwDiameter = 5;

// holder
difference() {
    union() {
        cube([holderWidth, holderLength, holderHeight - holderLength/2]);
        translate([0, holderLength/2, holderHeight - holderLength/2])
        rotate([0, 90, 0])
        cylinder(h = holderWidth, d = holderLength);
    }
    
    translate([-0.5, holderLength/2, holderHeight - holderLength/2])
    rotate([0, 90, 0])
    cylinder(h = holderWidth + 1, d = rodDiameter);
}

// bracket 1
translate([0, holderLength, 0])
rotate([0, 0, 180])
bracket1();
translate([holderWidth, 0, 0])
bracket1();

module bracket1() {
    difference() {
        union() {
            cube([bracketLength, bracketWidth, bracketThickness]);
        
            //brace
            translate([0, 0, bracketThickness])
            difference() {
                cube([bracketLength, bracketThickness, bracketLength]);
                rotate([90, 0, 0])
                translate([bracketLength, bracketLength, -bracketThickness - 0.5])
                cylinder(h=bracketThickness + 1.0, r=bracketLength);
            }
        }
        
        // screw hole
        translate([bracketLength - bracketWidth/2, bracketWidth/2, -0.5])
        cylinder(h=bracketThickness+1.0, d=screwDiameter);
    }
}
