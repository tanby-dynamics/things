/* Laptop display stand */
$fn = 100;

leg_l = 100;
leg_w = 10;
h = 20;
laptop_w = 18.0; //16.5;
laptop_l = 30;

translate([0, -(leg_w + laptop_w), 0])
rotate([0, 0, 60])
cube([leg_w, laptop_l, h]);

translate([0, -(leg_w + laptop_w), 0])
cube([leg_w, leg_l + leg_w + laptop_w, h]);

rotate([0, 0, 60])
cube([leg_w, leg_l, h]);

translate([0, leg_l, 0])
rotate([0, 0, 120])
translate([-10, 0, 0])
cube([leg_w, leg_l - leg_w, h]);


