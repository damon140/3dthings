



module leg() {
    rotate([0, -10, 0])
    cube([30, 20, 450]);
}

module foot() {
    difference() {
        union() {
          cube([40, 40, 50]);
          translate([-5, -5, 0])
          cube([50, 50, 15]);
        }
        translate([10, 10, 10])
        leg();
    }
}


// want a bolt hole??
module hip() {
    difference() {
        cube([40, 40, 50]);
        
        translate([10, 10, 10])
        leg();
    }
}


// translate([0, 100, 0])
// leg();

translate([0, 5, 100])
rotate([0, 90, 0])
cylinder(h=4, r=5);

translate([0, 0, 60])
cube([5, 10, 30]);

//translate([0, 50, 0])
foot();


// hip();



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

/*

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

*/
