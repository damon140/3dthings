


// could add a zip tie cutout

difference(){

  union() {

    translate([0, 15, -10])
    rotate([0, 90, 0])
    // 28.6 / 2 = 14.3
    cylinder(h=35, r=17.5);

    // key thing
    translate([3, 7, 0])
    hull() {
      cylinder(r=3,h=40);
    
      translate([0, 16, 0])
      cylinder(r=3,h=40);
  
      translate([8.5, -3, 0])
      cylinder(r=3,h=40);
    
      translate([8.5, 19, 0])
      cylinder(r=3,h=40);
    }
  }
  
  // frame cutout
  translate([-10, 15, -10])
  rotate([0, 90, 0])
  // 28.6 / 2 = 14.3
  cylinder(h=50, r=14.1);
  
  // cable cutout
  translate([-2, 12.5, 4])
  cube([60, 5, 6]);

  // cut lower half
  translate([-1, -5, -52])
  cube([40, 40, 40]);
}



