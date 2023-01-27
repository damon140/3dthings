
difference(){
  translate([0, 0, 10])
  rotate([0, 90, 0])
  cube([30, 30, 30]);

  translate([-10, 15, -10])
  rotate([0, 90, 0])
  cylinder(h=50, r=13);
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

