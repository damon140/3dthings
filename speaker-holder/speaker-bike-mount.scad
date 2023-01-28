
difference(){
  translate([0, -2, -12])
  cube([20, 34, 26]);

  translate([-10, 15, -10])
  rotate([0, 90, 0])
  // 28.6 / 2 = 14.3
  cylinder(h=50, r=14.1);
  
  translate([-2, 12.5, 4])
  cube([60, 5, 6]);
}

// key thing
translate([3, 7, 10])
hull() {
  cylinder(r=3,h=25);
    
  translate([0, 16, 0])
  cylinder(r=3,h=25);
  
  translate([8.5, -3, 0])
  cylinder(r=3,h=25);
    
  translate([8.5, 19, 0])
  cylinder(r=3,h=25);
}

