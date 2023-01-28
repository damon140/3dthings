

translate([2, 2, 0])
linear_extrude(height=2)
    text("Lou", 20, "Arial");

cube([50, 2, 10]);


translate([50, 2, 5])
rotate([90, 0, 0])
cylinder(h=2, r=5);
