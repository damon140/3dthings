
/*
minkowski() {
  cube([75, 95, 5],center=true);
  translate([])
  cylinder(h=1, r=3);
}
*/


difference() {
  union() {

    minkowski() {
      cube([75, 95, 5],center=true);
      translate([])
      cylinder(h=1, r=3);
    }

    translate([0, -27, -8])
    rotate([15, 0, 0])
    cube([30, 35, 35], center=true);

    translate([0, 27, -8])
    rotate([-15, 0, 0])
    cube([30, 35, 35], center=true);
  };

  // cut bottom off   
  translate([-1, -15, -50])
  cube([200, 200, 100],center=true);



  
}



  translate([0, 40, -0.5])
  rotate([180, 0, 270])
  linear_extrude(height=2)
  text("platesplit", 14, "Arial");

  translate([32, -20, 0-.5])
  rotate([180, 0, 270])
  linear_extrude(height=2)
  text("v0.1b", 6, "Arial");
