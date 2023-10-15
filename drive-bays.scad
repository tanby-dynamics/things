// 3.5" and 2.5" drive bays
$fn = 100;

shellThickness = 1.0;

trayWidth = inchesToMm(3.5);
trayHeight = 20.0;
trayDepth = 120.0;

tray();

module tray() {
    // bottom
    translate([shellThickness, 0, 0])
    cutoutWall(trayWidth, trayDepth);
    
    // top
    translate([shellThickness, 0, trayHeight+shellThickness])
    cutoutWall(trayWidth, trayDepth);
    
    // left
    translate([shellThickness*2, 0, shellThickness])
    rotate([0, 270, 0])
    cutoutWallVert(trayHeight, trayDepth);
    
    // right
}

module cutoutWall(w, d) {
    difference() {
        shellWall(w, d);
        // cut out
        translate([w/2, d/2, -0.05])
        scale([1, 1.4, 1])
        cylinder(h=shellThickness+0.1, d=w*0.75);
    }
}

module cutoutWallVert(w, d) {
    difference() {
        shellWall(w, d);
        // cut out
        translate([w/2, d/2, -0.05])
        scale([1, 10.0, 1])
        cylinder(h=shellThickness+0.1, d=w*0.5);
    }
}

module shellWall(w, d) {
    cube([w, d, shellThickness]);
}


function inchesToMm(inches) = 300.0/12.0*inches;
