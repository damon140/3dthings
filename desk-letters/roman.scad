

translate([2, 2, 0])
linear_extrude(height=2)
    text("Roman", 20, "Gorgia");

cube([100, 2, 4]);


$fn=99;

translate([100, 2, 5])
rotate([90, 0, 0])
cylinder(h=2, r=5);
