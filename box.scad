$fn = 60;
$width = 110;
$plate_height = 24;

union() {
    difference() {
        // outer box
        cube([$width, $plate_height, 15]);

        //inner box
        translate([2, 2, -0.5])
        cube([$width - 4, $plate_height - 4, 14.5]);

        // left indent
        translate([2, 8, 7.17])
        rotate([0,-45,0])
        cube([2, 8, 2]);

        // right indent
        translate([$width, 24, 0])
        rotate([0,0,180])
        translate([2, 8, 7.17])
        rotate([0,-45,0])
        cube([2, 8, 2]);
        
        // cable hole
        translate([90, 12, 10])
        cylinder(10, 2.5, 2.5);
    }

    // mounting tab 1
    difference() {
        translate([-15,0,0])
        cube([15, 2, 15]);
        
        translate([-7.5, 5, 7.5])
        rotate([90,0,0])
        cylinder(10, 2.5, 2.5);
    }
    
    // mounting tab 2
    translate([$width, 2, 0])
    rotate([0,0,180])
    difference() {
        translate([-15,0,0])
        cube([15, 2, 15]);
        
        translate([-7.5, 5, 7.5])
        rotate([90,0,0])
        cylinder(10, 2.5, 2.5);
    }
}
