

translate([32, 2, 0])
linear_extrude(height=2)
    text("Damon", 20, "Arial");

cube([100, 2, 10]);


translate([100, 2, 5])
rotate([90, 0, 0])
cylinder(h=2, r=5);


scale([0.7, 0.7, 0.7])
translate([40, 0, 0])
rotate([0, 0, 90])
union() {
  difference() {
    $fn=99;
    translate([10, 10, 0])
    minkowski()
    {
      cube([40, 20, 2]);
      cylinder(r=10,h=1);
    }
    
    translate([13, 23, -1])
    minkowski()
    {
      cube([34, 6, 20]);
      cylinder(r=2.5,h=1);
    }
  }
  
  translate([4, 4, 3])
  linear_extrude(height=2)
      text("Bourbon", 10,   "Arial");
}


