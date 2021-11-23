
// Z axis end stop for end stop xxx design


// 1 make length to frame longer

// 2 extend length away from frame


  translate([26, -4, 0])
  difference() {
    cylinder($fn=20, d=10.5, h=15);
    cylinder($fn=20, d=8.2, h=17);
    translate([-2, -9, 0])
    cube([5, 7, 17]);
  }


difference() {

  union() {
    // rectangle
    cube([45, 3, 15]);

    rotate([0, 0, 90])
    cube([20, 3, 15]);
  }

  // frame hole
  translate([3, 10, 10])
  rotate([-90, 0, 90])
  cylinder($fn=20, d=3.4, h=10);
  
  // end stop hole 1
  translate([18, -5, 10])
  rotate([-90, 0, 0])
  cylinder($fn=20, d=3.4, h=10);
  
  // end stop hole 2
  translate([35, -5, 10])
  rotate([-90, 0, 0])
  cylinder($fn=20, d=3.4, h=10);
  
}
