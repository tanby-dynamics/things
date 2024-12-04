// HDD/SSD bays
$fn = 100;

shellThickness = 2.0;

trayWidth = 104;
trayHeight = 30.0;
trayDepth = 100.0;
baseHeight = 10;

// vertical orientation
vertical_base();
translate([0, trayHeight*4 + shellThickness*5, 0])
rotate([90, 0, 0]) {
    tray();
    translate([0, 0, trayHeight + shellThickness])
    tray();
    translate([0, 0, (trayHeight + shellThickness)*2])
    tray();
    translate([0, 0, (trayHeight + shellThickness)*3])
    tray();
}

// horizontal orientation
/*
horizontal_base(baseHeight);
translate([0, 0, baseHeight]) {
    tray();
    translate([0, 0, trayHeight + shellThickness])
    tray();
    translate([0, 0, (trayHeight + shellThickness)*2])
    tray();
    translate([0, 0, (trayHeight + shellThickness)*3])
    tray();
}
*/

module tray() {
    // bottom
    cutoutWall(trayWidth, trayDepth, 1.0);
    
    // top
    translate([0, 0, trayHeight+shellThickness])
    cutoutWall(trayWidth, trayDepth, 1.0);
    
    // left
    translate([shellThickness, 0, shellThickness])
    wallVert(trayHeight, trayDepth);
    
    // right
    translate([trayWidth + shellThickness, 0, shellThickness])
    wallVert(trayHeight, trayDepth);
}

module horizontal_base(height) {
    translate([-20, 0, 0])
    difference() {
        shellWall(trayWidth + 40, trayDepth);
        translate([10, 10, -0.05])
        cylinder(h=shellThickness+0.1, d=4);
        translate([10, trayDepth - 10, -0.05])
        cylinder(h=shellThickness+0.1, d=4);
        translate([trayWidth + 30, 10, -0.05])
        cylinder(h=shellThickness+0.1, d=4);
        translate([trayWidth + 30, trayDepth - 10, -0.05])
        cylinder(h=shellThickness+0.1, d=4);
    }
    
    translate([shellThickness, 0, 0])
    rotate([0, 270, 0])
    shellWall(height, trayDepth);
    
    translate([shellThickness + trayWidth, 0, 0])
    rotate([0, 270, 0])
    shellWall(height, trayDepth);
}

module vertical_base() {
    module vertical_base_edge() {
        difference() {
            shellWall(trayHeight*4 + shellThickness*5, 20);
            translate([10, 10, -0.05])
            cylinder(h=shellThickness+0.1, d=4);
            translate([trayHeight*4 + shellThickness*5 - 10, 10, -0.05])
            cylinder(h=shellThickness+0.1, d=4);
        }
    }
    rotate([0, 0, 90]) {
        vertical_base_edge();
        translate([0, -(trayWidth + 20), 0])
        vertical_base_edge();
    }
}

module cutoutWall(w, d, cutoutScale) {
    difference() {
        shellWall(w + shellThickness, d);
        // cut out
        //translate([w/2, d/2, -0.05])
        //scale([1, cutoutScale, 1])
        //cylinder(h=shellThickness+0.1, d=w*0.75);
    }
}

module wallVert(w, d) {
    rotate([0, 270, 0])
    difference() {
        shellWall(w, d);
        // screw slot
        //translate([6, 7.5, -0.05])
        // (inverted, for vertical mount)
        translate([w - 10, 7.5, -0.05])
        cube([4, d - 15, shellThickness+0.1]);
    }
}

module shellWall(w, d) {
    cube([w, d, shellThickness]);
}


function inchesToMm(inches) = 300.0/12.0*inches;
