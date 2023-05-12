
length=20;
thickness=1.5;
// gap


// 3.5mm gap, 10mm hooks


rotate([90, 0, 0])
translate([2, 1.5, 0])
linear_extrude(height=2)
    text("D", 20, "Arial");


translate([0, -5, 0])
cube([length, 6.5, thickness]);

translate([0, 0, -10])
cube([length, thickness, 10]);

translate([0, -3.5 -thickness, -10])
cube([length, thickness, 10]);


