/*
translate([-25,-55,0]) { 
  difference() {
    // cube outter
    cube([52,112,93]);
    // subtraction shape
    translate([1,1,3])
      union() {
      }
  }
}

*/


difference() {

  cube([20, 110, 29]);

  translate([-1, 32.5, -1])
  cube([60, 45, 20]);
}



// picture board is about 12.3mm thick
// TODO: add picture holders

translate([0, 82, 29])
union() {

  cube([20, 7, 12]);

  translate([0, 21, 0])
  cube([20, 7, 12]);
    
}

