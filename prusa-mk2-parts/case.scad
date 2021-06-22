
translate([-25,-55,0]) { 
  difference() {
    // cube outter
    cube([52,112,93]);
    // subtraction shape
    translate([1,1,3])
      union() {
        // FIXME: Damon check 7 length here, too short??
        // main inner body
        translate([0, 2, 0])  
          cube([50,106,98]);
        // switch cutout
        translate([0, 35, 15])
          cube([100,42,27]);
        // switch holes
        translate([40,55,10])
          rotate([0,90,0])
            cylinder(h=20, r1=3, r2=3);
        translate([40,55,48])
          rotate([0,90,0])
            cylinder(h=20, r1=3, r2=3);
        // frame holes
      }
  }
}


translate([-25,-55,0])
  cube([3,110,75]);




