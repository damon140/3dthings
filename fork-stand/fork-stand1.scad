
boostFrontAxelLength=110-4;
baseThickness=5;

difference() {

  union() {
    // left fork
    translate([0, -boostFrontAxelLength/2 + 10, 25])
    cube([30, 20, 50], center=true);

    // left right
    translate([0, boostFrontAxelLength/2 - 10, 25])
    cube([30, 20, 50], center=true);

    // base shapes
    union() {
    color([1,0,0])
    cube([25, 200, baseThickness], center = true);
         
    translate([0, 43, 0])
    cube([80, 22, baseThickness], center=true);
    
    translate([0, -43, 0])
    cube([80, 22, baseThickness], center=true);
    }
  }

  // slot cutout thingy
  translate([0, 0, 42])
  rotate([90 ,0, 0])
  hull() {
    cylinder(h=boostFrontAxelLength+1, r=15.2/2, center=true);

    translate([0, 20, 0])
    cylinder(h=boostFrontAxelLength+1, r=27/2, center=true);
  }

  // left shoulder cutout
  translate([0, boostFrontAxelLength/2, 62])
  rotate([20])
  cube([32, 20, 50], center=true);

  // right shoulder cutout
  translate([0, -boostFrontAxelLength/2, 62])
  rotate([-20])
  cube([32, 20, 50], center=true);


  translate([6, -29, 0])
  rotate([0,0, -270])
  linear_extrude(height=3.5)
  text("mcforky", 12, "Arial");
  
}




