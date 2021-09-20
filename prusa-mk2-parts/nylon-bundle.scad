


// block
module block() {
  cube([15, 6, 5]);
}

$fn=30;

// cutouts
module cutouts() {
  // 
  translate([4, 5, 1.5])
  rotate([30, 0, 0])
  cylinder(h=10, d=2.0);

  translate([7.2, 5, 1.5])
  rotate([30, 0, 0])
  cylinder(h=10, d=2.0);

  translate([10.5, 5, 1.5])
  rotate([30, 0, 0])
  cylinder(h=10, d=2.0);    
    
}

translate([-60,0,0])
block();


translate([-30,0,0])
cutouts();

difference() {
  block();
  cutouts();
}



// 
// cube([2,25,25]);


