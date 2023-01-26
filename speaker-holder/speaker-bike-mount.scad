
difference(){
  translate([0, 0, 50])
  rotate([0, 90, 0])
  cube([50, 30, 30]);

  translate([-10, 15, 0])
  rotate([0, 90, 0])
  cylinder(h=50, r=13);
}

// TODO need two triangle cutouts