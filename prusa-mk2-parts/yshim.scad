$fn=100;

inside=10;
outside=22;
height=12;

module m3Hole() {
  cylinder(h=10, d=3);
}

difference() {

  union() {
    cylinder(h=height,
      d=inside+2);
    cylinder(h=2, d=outside);
  }

  translate([0, 0, -1])
  cylinder(h=height+2, d=inside);

  for ( i = [0 : 3] ){
    rotate( i * 90, [0, 0, 1])
    translate([0, 9, -1])
    m3Hole();
  }  

}

