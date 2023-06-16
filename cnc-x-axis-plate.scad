// X Axis plate
$fn = 70;

plateWidth = 8;
baseHeight = 21;
baseWidth = 20 + plateWidth*2 + 40;
baseScrewDiam = 6;
railScrewDiam = 5;

// uncomment this translate to get the mirrored part
//translate([40, 0, 0])
railHolder();
translate([0, -baseHeight, 0])
base();

module railHolder() {
    difference() {
        cube([20 + plateWidth*2, 80+plateWidth, plateWidth]);
        
        translate([plateWidth + 10, 80 - plateWidth, -0.5])
        cylinder(h = plateWidth + 1.0, d = railScrewDiam);
        translate([plateWidth + 10, 80 - plateWidth - 20, -0.5])
        cylinder(h = plateWidth + 1.0, d = railScrewDiam);
    }
    
    // brace
    cube([20 + plateWidth*2, plateWidth, 40]);
    
    // 2040 box
    translate([0, 80 + 0.5, plateWidth])
    cube([20 + plateWidth*2, plateWidth - 0.5, 20]);
    translate([0, 40 - plateWidth, plateWidth])
    cube([20 + plateWidth*2, plateWidth - 0.5, 20]);
    translate([0, 40 - 0.5, plateWidth])
    cube([plateWidth - 0.5, 40 + 1.0, 20]);
    translate([20 + plateWidth + 0.5, 40 - 0.5, plateWidth])
    cube([plateWidth - 0.5, 40 + 1.0, 20]);
}

module base() {
    difference() {
        cube([baseWidth, baseHeight, plateWidth]);

        translate([baseHeight/2, baseHeight/2, -0.5])
        cylinder(h = plateWidth + 1.0, d = baseScrewDiam);
        translate([baseWidth - baseHeight/2, baseHeight/2, -0.5])
        cylinder(h = plateWidth + 1.0, d = baseScrewDiam);
    }
}


