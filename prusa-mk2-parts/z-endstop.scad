

// Z axis end stop


// FIXME: 8mm smooth rod 2/3rd clip


    translate([28, -4, 10])
    difference() {
      cylinder($fn=20, d=10.5, h=7);
      cylinder($fn=20, d=8.2, h=10);
      translate([-2, -9, 0])
      cube([5, 7, 17]);
    }

// FIXME: Damon make smaller

//difference() {

  union() {
    // rectangle
    cube([35, 4, 17]);

    rotate([0, 0, 90])
    cube([20, 3.5, 17]);
  }

  //  
  translate([4, -5, 12])
  rotate([-90, 0, 0])
  cylinder($fn=20, d=3.4, h=10);
  
  //
  translate([19, -5, 12])
  rotate([-90, 0, 0])
  cylinder($fn=20, d=3.4, h=10);
  

//}
