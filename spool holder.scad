$fn = 200;

holderHeight = 70; // total height
holderWidth = 20;
holderLength = 50;
rodDiameter = 21;
bracketLength = 30;
bracketWidth = 20;
bracketThickness = 2;
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
