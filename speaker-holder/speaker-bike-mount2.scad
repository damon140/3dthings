


// FIXME: fix up zip tie cutout

difference(){

  union() {
    // body
    translate([0, 15, -10])
    rotate([0, 90, 0])
    // 28.6 / 2 = 14.3
    cylinder(h=35, r=17.5);

    // cable tie bit
    translate([27, 15, -10])
    rotate([0, 90, 0])
    cylinder(h=1, r=18.4);

    // cable tie bit
    translate([33, 15, -10])
    rotate([0, 90, 0])
    cylinder(h=1, r=18.4);
      
    // key thing
    translate([3, 7, 0])
    hull() {
      cylinder(r=3,h=39);
    
      translate([0, 16, 0])
      cylinder(r=3,h=39);
  
      translate([8.5, -3, 0])
      cylinder(r=3,h=39);
    
      translate([8.5, 19, 0])
      cylinder(r=3,h=39);
    }
  }

  // m3 hole
  translate([5, 9, 30.5])
  cylinder(h=9, r=1.6);
  
  // frame cutout
  translate([-10, 15, -10])
  rotate([0, 90, 0])
  // 28.6 / 2 = 14.3
  cylinder(h=50, r=14.1);


  // cable tie cutout
  translate([4, 15, -10])
  rotate([0, 90, 0])
  difference() {
    cylinder(h=5.3, r=25);
    cylinder(h=6, r=23.5);
  }
  
  // cable cutout
  translate([-2, 12.5, 4])
  cube([60, 5, 6]);
  

  // cut lower half
  translate([-1, -5, -52])
  cube([40, 40, 40]);

}

// retention arm
translate([-10, -10, 0])
difference() {
  hull() {
    cylinder(r=4,h=3.5);
    
    translate([0, 14, 0])
    cylinder(r=4,h=3.5);
  }

  translate([0, 0, -1])
  cylinder(h=9, r=1.8);

}

