/*
This is a pot cover for some pots I want to display.
A difference of 2mm between the inner and outer measurements has ok strength and is relatively fast to print.
The small cover has the same outer dimensions as the large cover, so it actually uses more material. It's for a smaller pot so I just raise up the inner height.
*/
$fn = 200;

// large
//pot_cover(135, 137, 95, 97);

// small
pot_cover(135, 137, 82, 97);

module pot_cover(id, od, ih, oh) {
    difference() {
        cylinder(h = oh, d = od);
        translate([0, 0, oh - ih + 0.01])
        cylinder(h = id, d = id);
    }
}

