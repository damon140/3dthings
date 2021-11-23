

// Z axis end stop for end stop xxx design

// screw holes test just fine!!


// 1 ditch slot

// 2 move holes to around rod

// 3 shorten

// 4 make length to frame longer

// 5 extend length away from frame


    translate([24, -4, 18])
    difference() {
      cylinder($fn=20, d=10.5, h=7);
      cylinder($fn=20, d=8.2, h=10);
      translate([-2, -9, 0])
      cube([5, 7, 17]);
    }


difference() {

  union() {
    // rectangle
    cube([35, 3, 25]);

    rotate([0, 0, 90])
    cube([20, 3, 25]);
  }

  // m3 hole 1
  translate([2, -5, 20])
  rotate([-90, 0, 0])
  cylinder($fn=20, d=3.4, h=10);
  
  // m3 hole 2
  translate([19, -5, 20])
  rotate([-90, 0, 0])
  cylinder($fn=20, d=3.4, h=10);
  
  // slot

  // 3 mm in
  // need a slot 16 x 4 in the end

  translate([-4, 6, 7])  
  cube([10, 4, 16.5]);


}
