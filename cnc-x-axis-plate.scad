// X Axis plate
$fn = 70;

plateWidth = 8;
baseHeight = 21;
baseWidth = 20 + plateWidth*2 + 40;
baseScrewDiam = 6;
railScrewDiam = 5;
beltTensionerL = 30;

// uncomment this translate to get the mirrored (left) part
//translate([40, 0, 0])
railHolder();
translate([0, -baseHeight, 0])
base();

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
    
    // 2040 box
    // t
    translate([0, 80 + 0.5, plateWidth])
    cube([20 + plateWidth*2, plateWidth - 0.5, 20]);
    // b
    translate([0, 40 - plateWidth, plateWidth])
    cube([20 + plateWidth*2, plateWidth - 0.5, 20]);
    // l
    translate([0, 40 - 0.5, plateWidth])
    cube([plateWidth - 0.5, 40 + 1.0, 20]);
    // r
    translate([20 + plateWidth + 0.5, 40 - 0.5, plateWidth])
    cube([plateWidth - 0.5, 40 + 1.0, 20]);
    
    // belt tensioner surround
    translate([5, 80 + plateWidth, plateWidth])
    cube([plateWidth/2, beltTensionerL, 30]);
    translate([15 + plateWidth*1.5, 80 + plateWidth, plateWidth])
    cube([plateWidth/2, beltTensionerL, 30]);
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


