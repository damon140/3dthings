

difference() {
  union() {

    minkowski() {
      difference(){
        cube([52, 99, 4],center=true);
          
        // left side loading channel
        translate([-45, 7, 0])
          
        // bevelled edging for main plait
        cube([55, 60, 35], center=true);          
      }
      cylinder(h=1, r=8, r2 = 6);
    }

    translate([0, -35, -10])
    rotate([15, 0, 0])
    cube([55, 35, 35], center=true);
    
    /*
    translate([0, 27, -8])
    rotate([-15, 0, 0])
    cube([30, 35, 35], center=true);
    */

    translate([0, 46, 5])
    rotate([10, 0 ,0])
    cube([55, 15, 13], center=true);
  };

  // cut bottom off   
  translate([-1, -15, -50])
  cube([200, 200, 100],center=true);

  translate([0, 50, 0.75])
  rotate([180, 0, 270])
  linear_extrude(height=2)
  text("platesplit", 16, "Arial");

  translate([25, -20, 0.75])
  rotate([180, 0, 270])
  linear_extrude(height=2)
  text("v-b0.5", 8.5, "Arial");


  // TODO: add a first loading channel
  // translate([-20, 24, 0])
  // rotate([15, 45, 0])
  // cube([45, 35, 35], center=true);
}
