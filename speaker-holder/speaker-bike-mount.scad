
difference(){
  translate([0, -2, -12])
  cube([26, 34, 34]);

  translate([-10, 15, -10])
  rotate([0, 90, 0])
  // 28.6 / 2 = 14.3
  cylinder(h=50, r=14.3);
    
  translate([-2, 12.5, 4])
  cube([60, 5, 5]);    
}

// short tab
translate([3, 7, 10])
hull() {
  cylinder(r=3,h=25);
    
  translate([0, 15, 0])
  cylinder(r=3,h=25);
}

// long tab
translate([23, 0, 10])
hull() {
  cylinder(r=3,h=25);
    
  translate([0, 30, 0])
  cylinder(r=3,h=25);
}

