
cdDim = [125, 142, 10];
cdTolerances = [5, -8, 2];
shelves = 10;
shellThickness = 2;

cdHolder();
translate([cdDim[0] + cdTolerances[0] + shellThickness, 0, 0])
cdHolder();

module cdHolder() {
    // side 1
    cube([cdDim[0] + cdTolerances[0] + shellThickness, shellThickness, shelves*(cdDim[2] + cdTolerances[2]) + shellThickness*(shelves+1)]);

    // side 2
    cube([shellThickness, cdDim[1] + cdTolerances[1] + shellThickness, shelves*(cdDim[2] + cdTolerances[2]) + shellThickness*(shelves+1)]);

    // top
    translate([cdDim[0] + cdTolerances[0] + shellThickness, 0, 0])
    cube([shellThickness, cdDim[1] + cdTolerances[1] + shellThickness, shelves*(cdDim[2] + cdTolerances[2]) + shellThickness*(shelves+1)]);

    // bottom
    translate([shellThickness, shellThickness, 0])
    cube([cdDim[0] + cdTolerances[0], cdDim[1] + cdTolerances[1], shellThickness]);

    translate([shellThickness, shellThickness, shellThickness]) {
        translate([0, 0, shelves*12 + (shelves-1)*shellThickness])
        cube([cdDim[0] + cdTolerances[0], cdDim[1] + cdTolerances[1], shellThickness]);

        translate([0, 0, cdDim[2] + cdTolerances[2]])
        for (i = [0:shelves-1]) {
            translate([0, 0, i*(cdDim[2] + cdTolerances[2]) + i*shellThickness])
            linear_extrude(height=shellThickness)
            bracket_geometry();
        }
    }
}

module bracket_geometry() {
    // CDs are 142x125x10mm. Add a 5mm tolerance to the width and decrease the length so CDs poke out 8mm.
    polygon(points=[
        [0, 0],
        [0, 134],
        [15, 134],
        [15.246875, 133.996875],
        [15.4875, 133.9875],
        [15.721875, 133.971875],
        [15.95, 133.95],
        [16.171875, 133.921875],
        [16.3875, 133.8875],
        [16.596875, 133.846875],
        [16.8, 133.8],
        [16.996875, 133.746875],
        [17.1875, 133.6875],
        [17.371875, 133.621875],
        [17.55, 133.55],
        [17.721875, 133.471875],
        [17.8875, 133.3875],
        [18.046875, 133.296875],
        [18.2, 133.2],
        [18.346875, 133.096875],
        [18.4875, 132.9875],
        [18.621875, 132.871875],
        [18.75, 132.75],
        [18.871875, 132.621875],
        [18.9875, 132.4875],
        [19.096875, 132.346875],
        [19.2, 132.2],
        [19.296875, 132.046875],
        [19.3875, 131.8875],
        [19.471875, 131.721875],
        [19.55, 131.55],
        [19.621875, 131.371875],
        [19.6875, 131.1875],
        [19.746875, 130.996875],
        [19.8, 130.8],
        [19.846875, 130.596875],
        [19.8875, 130.3875],
        [19.921875, 130.171875],
        [19.95, 129.95],
        [19.971875, 129.721875],
        [19.9875, 129.4875],
        [19.996875, 129.246875],
        [20, 129],
        [20, 49],
        [20.165938, 45.147531],
        [20.6525, 41.5805],
        [21.442813, 38.285031],
        [22.52, 35.248],
        [23.867188, 32.457031],
        [25.4675, 29.9005],
        [27.304063, 27.567531],
        [29.36, 25.448],
        [31.618438, 23.532531],
        [34.0625, 21.8125],
        [36.675313, 20.280031],
        [39.44, 18.928],
        [42.339688, 17.750031],
        [45.3575, 16.7405],
        [48.476563, 15.894531],
        [51.68, 15.208],
        [54.950938, 14.677531],
        [58.2725, 14.3005],
        [61.627813, 14.075031],
        [65, 14],
        [68.372188, 14.075031],
        [71.7275, 14.3005],
        [75.049063, 14.677531],
        [78.32, 15.208],
        [81.523438, 15.894531],
        [84.6425, 16.7405],
        [87.660313, 17.750031],
        [90.56, 18.928],
        [93.324688, 20.280031],
        [95.9375, 21.8125],
        [98.381563, 23.532531],
        [100.64, 25.448],
        [102.695937, 27.567531],
        [104.5325, 29.9005],
        [106.132813, 32.457031],
        [107.48, 35.248],
        [108.557188, 38.285031],
        [109.3475, 41.5805],
        [109.834063, 45.147531],
        [110, 49],
        [110, 129],
        [110.003125, 129.246875],
        [110.0125, 129.4875],
        [110.028125, 129.721875],
        [110.05, 129.95],
        [110.078125, 130.171875],
        [110.1125, 130.3875],
        [110.153125, 130.596875],
        [110.2, 130.8],
        [110.253125, 130.996875],
        [110.3125, 131.1875],
        [110.378125, 131.371875],
        [110.45, 131.55],
        [110.528125, 131.721875],
        [110.6125, 131.8875],
        [110.703125, 132.046875],
        [110.8, 132.2],
        [110.903125, 132.346875],
        [111.0125, 132.4875],
        [111.128125, 132.621875],
        [111.25, 132.75],
        [111.378125, 132.871875],
        [111.5125, 132.9875],
        [111.653125, 133.096875],
        [111.8, 133.2],
        [111.953125, 133.296875],
        [112.1125, 133.3875],
        [112.278125, 133.471875],
        [112.45, 133.55],
        [112.628125, 133.621875],
        [112.8125, 133.6875],
        [113.003125, 133.746875],
        [113.2, 133.8],
        [113.403125, 133.846875],
        [113.6125, 133.8875],
        [113.828125, 133.921875],
        [114.05, 133.95],
        [114.278125, 133.971875],
        [114.5125, 133.9875],
        [114.753125, 133.996875],
        [115, 134],
        [130, 134],
        [130, 0],
        [0, 0],
        [0, 0]
    ]);
}

/* https://logo2openscad.becdetat.com/
extsetfn 10

// CDs are 142x125x10mm. Add a 5mm tolerance to the width and decrease the length so CDs poke out 8mm.
make "length 142 - 8
make "width 125 + 5

fd :length
rt 90
fd 15

// chamfer 1
EXTBEZIERCURVE [
    EXTDEFCONTROLPOINT
    FD 5
    EXTDEFCONTROLPOINT
    RT 90
    FD 5
    EXTDEFCONTROLPOINT
]

fd 80

// slot curve
EXTBEZIERCURVE [
    EXTDEFCONTROLPOINT
    fd 40
    EXTDEFCONTROLPOINT
    lt 90
    fd (:width - 20*2)/2
    EXTDEFCONTROLPOINT
    fd (:width - 20*2)/2
    lt 90
    EXTDEFCONTROLPOINT
    fd 40
    EXTDEFCONTROLPOINT
]

fd 80

// chamfer 2
EXTBEZIERCURVE [
    EXTDEFCONTROLPOINT
    FD 5
    EXTDEFCONTROLPOINT
    RT 90
    FD 5
    EXTDEFCONTROLPOINT
]

fd 15
rt 90
fd :length

rt 90
fd :width
*/

