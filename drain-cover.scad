// Generated using logo2openscad.becdetat.com

// This is a cover for the drains that are out the front of the house

/* Logo:
// enclosing square
fd 218
rt 90
fd 218
rt 90
fd 218
rt 90
fd 218

pu
home
fd 21
rt 90
fd 43
seth 90

repeat 4 [
    // Ascending
    make "height 23
    repeat 3 [
        pd
        fd 10
        lt 90
        fd :height
        lt 135
        fd sqrt (10^2 + 10^2)
        LT 45
        fd :height - 10
        pu
        lt 90
        fd 20
        make "height :height + 20
    ]

    // middle slot
    make "height :height - 10
    pd
    fd 10
    lt 90
    fd :height
    lt 45
    fd (sqrt (10^2 + 10^2))/2
    lt 90
    fd (sqrt (10^2 + 10^2))/2
    lt 45
    fd :height
    pu
    lt 90
    fd 20

    // Descending
    make "height :height - 20
    repeat 3 [
        pd
        fd 10
        lt 90
        fd :height
        lt 45
        fd sqrt (10^2 + 10^2)
        LT 135
        fd :height + 10
        pu
        lt 90
        fd 20
        make "height :height - 20
    ]

    fd 13
    lt 90
    extmarker
    fd 23
]

pu

home
fd 33
rt 90
fd 8
extmarker [screw 1]

setxy 218, 218
seth 180
fd 33
rt 90
fd 8
extmarker [screw 2]
*/

$fn=50;

linear_extrude(height=6)
difference() {
    // Enclosing square
    polygon(points=[
        [0, 0],
        [0, 218],
        [218, 218],
        [218, 0],
        [0, 0]
    ]);

    polygon(points=[
        [43, 21],
        [53, 21],
        [53, 44],
        [43, 34],
        [43, 21],
        [43, 21]
    ]);

    polygon(points=[
        [63, 21],
        [73, 21],
        [73, 64],
        [63, 54],
        [63, 21],
        [63, 21]
    ]);

    polygon(points=[
        [83, 21],
        [93, 21],
        [93, 84],
        [83, 74],
        [83, 21],
        [83, 21]
    ]);

    polygon(points=[
        [103, 21],
        [113, 21],
        [113, 94],
        [108, 99],
        [103, 94],
        [103, 21],
        [103, 21]
    ]);

    polygon(points=[
        [123, 21],
        [133, 21],
        [133, 74],
        [123, 84],
        [123, 21],
        [123, 21]
    ]);

    polygon(points=[
        [143, 21],
        [153, 21],
        [153, 54],
        [143, 64],
        [143, 21],
        [143, 21]
    ]);

    polygon(points=[
        [163, 21],
        [173, 21],
        [173, 34],
        [163, 44],
        [163, 21],
        [163, 21]
    ]);

    // Marker: x=196, y=21

    polygon(points=[
        [196, 44],
        [196, 54],
        [173, 54],
        [183, 44],
        [196, 44],
        [196, 44]
    ]);

    polygon(points=[
        [196, 64],
        [196, 74],
        [153, 74],
        [163, 64],
        [196, 64],
        [196, 64]
    ]);

    polygon(points=[
        [196, 84],
        [196, 94],
        [133, 94],
        [143, 84],
        [196, 84],
        [196, 84]
    ]);

    polygon(points=[
        [196, 104],
        [196, 114],
        [123, 114],
        [118, 109],
        [123, 104],
        [196, 104],
        [196, 104]
    ]);

    polygon(points=[
        [196, 124],
        [196, 134],
        [143, 134],
        [133, 124],
        [196, 124],
        [196, 124]
    ]);

    polygon(points=[
        [196, 144],
        [196, 154],
        [163, 154],
        [153, 144],
        [196, 144],
        [196, 144]
    ]);

    polygon(points=[
        [196, 164],
        [196, 174],
        [183, 174],
        [173, 164],
        [196, 164],
        [196, 164]
    ]);

    // Marker: x=196, y=197

    polygon(points=[
        [173, 197],
        [163, 197],
        [163, 174],
        [173, 184],
        [173, 197],
        [173, 197]
    ]);

    polygon(points=[
        [153, 197],
        [143, 197],
        [143, 154],
        [153, 164],
        [153, 197],
        [153, 197]
    ]);

    polygon(points=[
        [133, 197],
        [123, 197],
        [123, 134],
        [133, 144],
        [133, 197],
        [133, 197]
    ]);

    polygon(points=[
        [113, 197],
        [103, 197],
        [103, 124],
        [108, 119],
        [113, 124],
        [113, 197],
        [113, 197]
    ]);

    polygon(points=[
        [93, 197],
        [83, 197],
        [83, 144],
        [93, 134],
        [93, 197],
        [93, 197]
    ]);

    polygon(points=[
        [73, 197],
        [63, 197],
        [63, 164],
        [73, 154],
        [73, 197],
        [73, 197]
    ]);

    polygon(points=[
        [53, 197],
        [43, 197],
        [43, 184],
        [53, 174],
        [53, 197],
        [53, 197]
    ]);

    // Marker: x=20, y=197

    polygon(points=[
        [20, 174],
        [20, 164],
        [43, 164],
        [33, 174],
        [20, 174],
        [20, 174]
    ]);

    polygon(points=[
        [20, 154],
        [20, 144],
        [63, 144],
        [53, 154],
        [20, 154],
        [20, 154]
    ]);

    polygon(points=[
        [20, 134],
        [20, 124],
        [83, 124],
        [73, 134],
        [20, 134],
        [20, 134]
    ]);

    polygon(points=[
        [20, 114],
        [20, 104],
        [93, 104],
        [98, 109],
        [93, 114],
        [20, 114],
        [20, 114]
    ]);

    polygon(points=[
        [20, 94],
        [20, 84],
        [73, 84],
        [83, 94],
        [20, 94],
        [20, 94]
    ]);

    polygon(points=[
        [20, 74],
        [20, 64],
        [53, 64],
        [63, 74],
        [20, 74],
        [20, 74]
    ]);

    polygon(points=[
        [20, 54],
        [20, 44],
        [33, 44],
        [43, 54],
        [20, 54],
        [20, 54]
    ]);

     translate([8, 33])
     circle(d=3.5)  ; // screw 1
     translate([210, 185])
     circle(d=3.5)  ; // screw 2
}