$fn=100;


module halfRound() {

  rotate([90, 0, 0])
  difference() {
    // outside
    cylinder(h=14, d=8+5);

    // inside
    translate([0, 0, -1])
    cylinder(h=16, d=8);

    // half the cube
    translate([-10, -20, -1])
    cube([20, 20, 30]);
  }

}

translate([-4, 14, 0])
halfRound();

translate([-4, 95, 0])
halfRound();


difference() {
  cube([40, 95, 1.5]);
  
  translate([-12, 47.5, -1])
  cylinder(h=10, d=71);
  
  translate([20, 5, -1])
  cylinder(h=10, d=3.5);

  translate([35, 5, -1])
  cylinder(h=10, d=3.5);

  translate([30, 32, -1])
  cylinder(h=10, d=3.5);

  translate([30, 47, -1])
  cylinder(h=10, d=3.5);
  
}

