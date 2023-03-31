




//170 mm 
// 30mm
// sine(x) = O/ H
// x = asin(0/H)

partialFoot=170;
height=30;
angle=-1*asin(height/partialFoot);

platformSize=80;

// FIXME: need fn
// FIXME: need fn x 4

difference() {
  translate([partialFoot-(platformSize/2), 10, 0])
  minkowski() {
    cube([60, 60, 60]);
    cylinder(h=1, r=10);
  }

  // cut angle
  rotate([0, angle, 0])
  translate([0, -1, 0])
  cube([300, 90, 90]);
}
