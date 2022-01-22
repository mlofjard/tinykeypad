$width = 110;
$plate_height = 24;

// plate
union() {
    difference() {
        cube([$width, $plate_height, 1.5]);

        translate([5, 5, -0.5])
            cube([14, 14, 2.5]);
        translate([24.05, 5, -0.5])
            cube([14, 14, 2.5]);
        translate([43.10, 5, -0.5])
            cube([14, 14, 2.5]);
        translate([62.15, 5, -0.5])
            cube([14, 14, 2.5]);
        translate([$width - 19, 5, -0.5])
            cube([14, 14, 2.5]);
    }

    difference() {
        union() {
            translate([2, 8, 1.5])
            cube([2, 8, 10]);

            translate([2, 8, 8.67])
            rotate([0,-45,0])
            cube([2, 8, 2]);
        }
        translate([3.5, 7, 1.5])
        cube([2, 10, 12]);
    }
    
    translate([$width, 24, 0])
    rotate([0,0,180])
    difference() {
        union() {
            translate([2, 8, 1.5])
            cube([2, 8, 10]);

            translate([2, 8, 8.67])
            rotate([0,-45,0])
            cube([2, 8, 2]);
        }
        translate([3.5, 7, 1.5])
        cube([2, 10, 12]);
    }
}
