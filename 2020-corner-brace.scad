$fn = 100;

thickness = 6;

difference() {
    linear_extrude(height=thickness)
    polygon(
        points=[
            [0,0],
            [60,0],
            [60, 20],
            [20,60],
            [0,60]
        ],
        paths=[0,1,2,3]
    );

    translate([10, 25, -0.1]) m3_hole();
    translate([10, 45, -0.1]) m3_hole();
    translate([25, 10, -0.1]) m3_hole();
    translate([45, 10, -0.1]) m3_hole();
}


module m3_hole() {
    cylinder(h=thickness + 0.2, d=3.5);
    translate([0, 0, thickness/2])
    cylinder(h=thickness/2 + 0.2, d=6);
}





