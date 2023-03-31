



// sine(x) = O/ H
// x = asin(0/H)
//partialFoot=1200;
//height=10;
//angle=-1*asin(height/partialFoot);

difference() {
  union() {
    rotate([0, 90, 0])
    cylinder(h=45, r=5);

    translate([0, 20, 0])
    rotate([0, 90, 0])
    cylinder(h=45, r=5);
    
    translate([0, -10, 0])
    cube([45, 40, 2]);
  };

  // cut bottom off   
  translate([-1, -15, -10])
  cube([50, 50, 10]);


  translate([10, 5, 1.2])
  linear_extrude(height=2)
  text("Rob", 8, "Courier");
}





