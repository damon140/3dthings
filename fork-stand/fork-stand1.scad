
boostFrontAxelLength=110;



difference() {

  union() {
    // left fork
    translate([0, -boostFrontAxelLength/2 + 10, 25])
    cube([30, 20, 50], center=true);

    // left right
    translate([0, boostFrontAxelLength/2 - 10, 25])
    cube([30, 20, 50], center=true);

    // base y
    cube([80, 150, 5], center=true);
      
    
  }

  // slot cutout thingy
  translate([0, 0, 35])
  rotate([90 ,0, 0])
  hull() {
    cylinder(h=boostFrontAxelLength+1, r=15.2/2, center=true);

    translate([0, 20, 0])
    cylinder(h=boostFrontAxelLength+1, r=23/2, center=true);
  }

  // left shoulder cutout
  translate([0, boostFrontAxelLength/2, 62])
  rotate([20])
  cube([32, 20, 50], center=true);

  // right shoulder cutout
  translate([0, -boostFrontAxelLength/2, 62])
  rotate([-20])
  cube([32, 20, 50], center=true);

  rotate([0,0, -90])
  translate([-40, -30, 1.5])
  linear_extrude(height=2)
  text("mc standy", 13, "Arial");
}
