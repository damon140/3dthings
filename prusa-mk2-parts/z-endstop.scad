

// Z axis end stop


// FIXME: 8mm smooth rod 2/3rd clip


//difference() {

  union() {
    // rectangle
    cube([50, 4, 17]);

    rotate([0, 0, 90])
    cube([20, 3.5, 17]);
  }

  //  
  translate([20, -5, 12])
  rotate([-90, 0, 0])
  cylinder($fn=20, d=3.4, h=10);
  
  //  
  translate([20, -5, 12])
  rotate([-90, 0, 0])
  cylinder($fn=20, d=3.4, h=10);

  //
  translate([39, -5, 12])
  rotate([-90, 0, 0])
  cylinder($fn=20, d=3.4, h=10);
  
  
//}
