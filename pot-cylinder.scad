$fn = 200;

id = 120;
od = 130;
ih = 100;
oh = 105;

difference() {
    cylinder(h = oh, d = od);
    translate([0, 0, oh - ih + 0.01])
    cylinder(h = id, d = id);
}