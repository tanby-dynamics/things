$fn = 200;

height = 140;
bracketLength = 80;
standWidth = 30;
bracketThickness = 5;
holeDiameter = 5;

// stand
cube([standWidth, standWidth, height]);

// bracket 1
translate([standWidth, 0, 0])
bracket1();

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
        
        holes();
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
        
        holes();
    }
}

module holes() {
    translate([standWidth/2, standWidth/2, -0.5])
    cylinder(h=bracketThickness+1.0, d=holeDiameter);
    translate([bracketLength - standWidth/2, standWidth/2, -0.5])
    cylinder(h=bracketThickness+1.0, d=holeDiameter);
}