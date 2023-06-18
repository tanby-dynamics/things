// X Axis plate
$fn = 70;

plateWidth = 8;
baseHeight = 21;
baseWidth = 20 + plateWidth*2 + 40;
baseScrewDiam = 6;
railScrewDiam = 5;
beltTensionerL = 30;
railBoxBuffer = 0.1;

// uncomment this translate to get the mirrored (left) part
//translate([40, 0, 0])
//railHolder();
//translate([0, -baseHeight, 0])
//base();
extrusionBox();
difference() {
    translate([0, 32])
    cube([20 + plateWidth*2, 40+plateWidth*2, plateWidth]);
    // Rail screws
    translate([plateWidth + 10, 80 - plateWidth, -0.5])
    cylinder(h = plateWidth + 1.0, d = railScrewDiam);
    translate([plateWidth + 10, 80 - plateWidth - 20, -0.5])
    cylinder(h = plateWidth + 1.0, d = railScrewDiam);
}

module railHolder() {
    difference() {
        cube([20 + plateWidth*2, 80 + plateWidth + beltTensionerL, plateWidth]);
        
        // Rail screws
        translate([plateWidth + 10, 80 - plateWidth, -0.5])
        cylinder(h = plateWidth + 1.0, d = railScrewDiam);
        translate([plateWidth + 10, 80 - plateWidth - 20, -0.5])
        cylinder(h = plateWidth + 1.0, d = railScrewDiam);
        
        // belt tensioner screw
        translate([plateWidth + 10, 80 + plateWidth + beltTensionerL/2, -0.5])
        cylinder(h = plateWidth + 1.0, d = railScrewDiam);
    }
    
    // brace
    // on bed
    cube([20 + plateWidth*2, plateWidth, 40]);
    // bed brace (guessed the numbers ;-) )
    translate([0, plateWidth, plateWidth])
    cube([plateWidth/2, 24, 20]);
    translate([20 + plateWidth*1.5, plateWidth, plateWidth])
    cube([plateWidth/2, 24, 20]);
    
    extrusionBox();
    
    // belt tensioner surround
    translate([5, 80 + plateWidth, plateWidth])
    cube([plateWidth/2, beltTensionerL, 30]);
    translate([15 + plateWidth*1.5, 80 + plateWidth, plateWidth])
    cube([plateWidth/2, beltTensionerL, 30]);
}

module extrusionBox() {
    // t
    translate([0, 80 + railBoxBuffer, plateWidth])
    cube([20 + plateWidth*2, plateWidth - railBoxBuffer, 20]);
    // b
    translate([0, 40 - plateWidth, plateWidth])
    cube([20 + plateWidth*2, plateWidth - railBoxBuffer, 20]);
    // l
    translate([0, 40 - railBoxBuffer, plateWidth])
    cube([plateWidth - railBoxBuffer, 40 + 1.0, 20]);
    // r
    translate([20 + plateWidth + railBoxBuffer, 40 - 0.5, plateWidth])
    cube([plateWidth - railBoxBuffer, 40 + 1.0, 20]);
}

module base() {
    difference() {
        cube([baseWidth, baseHeight, plateWidth]);

        // l
        translate([baseHeight/2, baseHeight/2, -0.5])
        cylinder(h = plateWidth + 1.0, d = baseScrewDiam);
        // m
        translate([baseWidth/2, baseHeight/2, -0.5])
        cylinder(h = plateWidth + 1.0, d = baseScrewDiam);
        // r
        translate([baseWidth - baseHeight/2, baseHeight/2, -0.5])
        cylinder(h = plateWidth + 1.0, d = baseScrewDiam);
    }
}


