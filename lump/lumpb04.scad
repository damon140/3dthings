

difference() {
  union() {

    minkowski() {
      difference(){
        cube([65, 98, 4],center=true);
          
        // left side loading channel
        translate([-45, 7, 0])
          
        // bevelled edging for main plait
        cube([55, 60, 35], center=true);          
      }
      cylinder(h=1, r=7, r2 = 5);
    }

    translate([0, -31, -10])
    rotate([15, 0, 0])
    cube([50, 35, 35], center=true);
    
    /*
    translate([0, 27, -8])
    rotate([-15, 0, 0])
    cube([30, 35, 35], center=true);
    */

    translate([0, 40, 5])
    cube([50, 15, 13], center=true);
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
  text("v-b0.3", 7, "Arial");


  // TODO: add a first loading channel
  // translate([-20, 24, 0])
  // rotate([15, 45, 0])
  // cube([45, 35, 35], center=true);
}
