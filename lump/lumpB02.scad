


difference() {
  union() {

    minkowski() {
      cube([70, 95, 5],center=true);
      translate([])
      cylinder(h=1, r=3);
    }

    translate([0, -27, -8])
    rotate([15, 0, 0])
    cube([45, 35, 35], center=true);
    
    /*
    translate([0, 27, -8])
    rotate([-15, 0, 0])
    cube([30, 35, 35], center=true);
    */

    translate([-20, 24, 0])
    cube([45, 15, 13]);
  };

  // cut bottom off   
  translate([-1, -15, -50])
  cube([200, 200, 100],center=true);

  translate([0, 40, 0.75])
  rotate([180, 0, 270])
  linear_extrude(height=2)
  text("platesplit", 14, "Arial");

  translate([25, -20, 0.75])
  rotate([180, 0, 270])
  linear_extrude(height=2)
  text("v-b0.2", 6, "Arial");

  // TODO: add a loading channel
  // translate([-20, 24, 0])
  // rotate([15, 45, 0])
  // cube([45, 35, 35], center=true);
}
