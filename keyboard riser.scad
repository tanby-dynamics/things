$fn = 200;

height = 80;
bracketLength = 40;
legWidth = 20;
bracketThickness = 3;
braceLength = 30;

// leg
cube([legWidth, legWidth, height]);

// bracket 1
translate([legWidth, 0, 0])
bracket1();

rotate([0, 0, 90])
translate([legWidth, -legWidth, 0])
bracket2();

module bracket1() {
    difference() {
        union() {
            cube([bracketLength, legWidth, bracketThickness]);
        
            //brace
            difference() {
                cube([braceLength/2, bracketThickness, braceLength/2+bracketThickness]);
                
                rotate([90, 0, 0])
                translate([braceLength/2, braceLength/2 + bracketThickness, -bracketThickness - 0.5])
                cylinder(h=bracketThickness + 1.0, r=braceLength/2);
            }
        }
    }
}

module bracket2() {
    difference() {
        union() {
            cube([bracketLength, legWidth, bracketThickness]);
        
            //brace
            difference() {
                translate([0, legWidth-bracketThickness, 0])
                cube([braceLength/2, bracketThickness, braceLength/2 + bracketThickness]);
                
                rotate([90, 0, 0])
                translate([braceLength/2, braceLength/2 + bracketThickness, - legWidth - 0.5])
                cylinder(h=bracketThickness + 1.0, r=braceLength/2);
            }
        }
    }
}
