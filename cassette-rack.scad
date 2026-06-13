// Rack for 20 cassettes, two columns of 10
cassetteDim = [108, 70, 16];
cassetteTolerances = [5, -8, 2];
shelves = 10;
shellThickness = 2;

cassetteHolder();
translate([cassetteDim[0] + cassetteTolerances[0] + shellThickness, 0, 0])
cassetteHolder();

module cassetteHolder() {
    // side 1
    cube([cassetteDim[0] + cassetteTolerances[0] + shellThickness, shellThickness, shelves*(cassetteDim[2] + cassetteTolerances[2]) + shellThickness*(shelves+1)]);

    // side 2
    cube([shellThickness, cassetteDim[1] + cassetteTolerances[1] + shellThickness, shelves*(cassetteDim[2] + cassetteTolerances[2]) + shellThickness*(shelves+1)]);

    // top
    translate([cassetteDim[0] + cassetteTolerances[0] + shellThickness, 0, 0])
    cube([shellThickness, cassetteDim[1] + cassetteTolerances[1] + shellThickness, shelves*(cassetteDim[2] + cassetteTolerances[2]) + shellThickness*(shelves+1)]);

    // bottom
    translate([shellThickness, shellThickness, 0])
    cube([cassetteDim[0] + cassetteTolerances[0], cassetteDim[1] + cassetteTolerances[1], shellThickness]);

    translate([shellThickness, shellThickness, shellThickness]) {
        translate([0, 0, shelves*(cassetteDim[2] + cassetteTolerances[2]) + (shelves-1)*shellThickness])
        cube([cassetteDim[0] + cassetteTolerances[0], cassetteDim[1] + cassetteTolerances[1], shellThickness]);

        translate([0, 0, cassetteDim[2] + cassetteTolerances[2]])
        for (i = [0:shelves-1]) {
            translate([0, 0, i*(cassetteDim[2] + cassetteTolerances[2]) + i*shellThickness])
            linear_extrude(height=shellThickness)
            bracket_geometry();
        }
    }
}

module bracket_geometry() {
    // Casettes are 108x70x16mm. Add a 5mm tolerance to the width and decrease the length so tapes poke out 8mm.
    polygon(points=[
        [0, 0],
        [0, 62],
        [10, 62],
        [10.246875, 61.996875],
        [10.4875, 61.9875],
        [10.721875, 61.971875],
        [10.95, 61.95],
        [11.171875, 61.921875],
        [11.3875, 61.8875],
        [11.596875, 61.846875],
        [11.8, 61.8],
        [11.996875, 61.746875],
        [12.1875, 61.6875],
        [12.371875, 61.621875],
        [12.55, 61.55],
        [12.721875, 61.471875],
        [12.8875, 61.3875],
        [13.046875, 61.296875],
        [13.2, 61.2],
        [13.346875, 61.096875],
        [13.4875, 60.9875],
        [13.621875, 60.871875],
        [13.75, 60.75],
        [13.871875, 60.621875],
        [13.9875, 60.4875],
        [14.096875, 60.346875],
        [14.2, 60.2],
        [14.296875, 60.046875],
        [14.3875, 59.8875],
        [14.471875, 59.721875],
        [14.55, 59.55],
        [14.621875, 59.371875],
        [14.6875, 59.1875],
        [14.746875, 58.996875],
        [14.8, 58.8],
        [14.846875, 58.596875],
        [14.8875, 58.3875],
        [14.921875, 58.171875],
        [14.95, 57.95],
        [14.971875, 57.721875],
        [14.9875, 57.4875],
        [14.996875, 57.246875],
        [15, 57],
        [15, 27],
        [15.153031, 25.073766],
        [15.60175, 23.29025],
        [16.330594, 21.642516],
        [17.324, 20.124],
        [18.566406, 18.728516],
        [20.04225, 17.45025],
        [21.735969, 16.283766],
        [23.632, 15.224],
        [25.714781, 14.266266],
        [27.96875, 13.40625],
        [30.378344, 12.640016],
        [32.928, 11.964],
        [35.602156, 11.375016],
        [38.38525, 10.87025],
        [41.261719, 10.447266],
        [44.216, 10.104],
        [47.232531, 9.838766],
        [50.29575, 9.65025],
        [53.390094, 9.537516],
        [56.5, 9.5],
        [59.609906, 9.537516],
        [62.70425, 9.65025],
        [65.767469, 9.838766],
        [68.784, 10.104],
        [71.738281, 10.447266],
        [74.61475, 10.87025],
        [77.397844, 11.375016],
        [80.072, 11.964],
        [82.621656, 12.640016],
        [85.03125, 13.40625],
        [87.285219, 14.266266],
        [89.368, 15.224],
        [91.264031, 16.283766],
        [92.95775, 17.45025],
        [94.433594, 18.728516],
        [95.676, 20.124],
        [96.669406, 21.642516],
        [97.39825, 23.29025],
        [97.846969, 25.073766],
        [98, 27],
        [98, 57],
        [98.003125, 57.246875],
        [98.0125, 57.4875],
        [98.028125, 57.721875],
        [98.05, 57.95],
        [98.078125, 58.171875],
        [98.1125, 58.3875],
        [98.153125, 58.596875],
        [98.2, 58.8],
        [98.253125, 58.996875],
        [98.3125, 59.1875],
        [98.378125, 59.371875],
        [98.45, 59.55],
        [98.528125, 59.721875],
        [98.6125, 59.8875],
        [98.703125, 60.046875],
        [98.8, 60.2],
        [98.903125, 60.346875],
        [99.0125, 60.4875],
        [99.128125, 60.621875],
        [99.25, 60.75],
        [99.378125, 60.871875],
        [99.5125, 60.9875],
        [99.653125, 61.096875],
        [99.8, 61.2],
        [99.953125, 61.296875],
        [100.1125, 61.3875],
        [100.278125, 61.471875],
        [100.45, 61.55],
        [100.628125, 61.621875],
        [100.8125, 61.6875],
        [101.003125, 61.746875],
        [101.2, 61.8],
        [101.403125, 61.846875],
        [101.6125, 61.8875],
        [101.828125, 61.921875],
        [102.05, 61.95],
        [102.278125, 61.971875],
        [102.5125, 61.9875],
        [102.753125, 61.996875],
        [103, 62],
        [113, 62],
        [113, 0],
        [0, 0],
        [0, 0]
    ]);
}

/* https://logo2openscad.becdetat.com/

extsetfn 10

make "length 70 - 8
make "width 108 + 5

fd :length
rt 90
fd 10

// chamfer 1
EXTBEZIERCURVE [
    EXTDEFCONTROLPOINT
    FD 5
    EXTDEFCONTROLPOINT
    RT 90
    FD 5
    EXTDEFCONTROLPOINT
]

fd 30

// slot curve
EXTBEZIERCURVE [
    EXTDEFCONTROLPOINT
    fd 20
    EXTDEFCONTROLPOINT
    lt 90
    fd (:width - 15*2)/2
    EXTDEFCONTROLPOINT
    fd (:width - 15*2)/2
    lt 90
    EXTDEFCONTROLPOINT
    fd 20
    EXTDEFCONTROLPOINT
]

fd 30

// chamfer 2
EXTBEZIERCURVE [
    EXTDEFCONTROLPOINT
    FD 5
    EXTDEFCONTROLPOINT
    RT 90
    FD 5
    EXTDEFCONTROLPOINT
]

fd 10
rt 90
fd :length

rt 90
fd :width
*/

