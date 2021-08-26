$fn=100;

insideTop=10.7;
outsideTop=13.33;
outsideBottom=22;
height=11;

module m3Hole() {
  cylinder(h=10, d=3);
}

difference() {

  union() {
    cylinder(h=height,
      d=outsideTop);
    cylinder(h=2, d=outsideBottom);
  }

  translate([0, 0, -1])
  cylinder(h=height+2, d=insideTop);

  for ( i = [0 : 3] ){
    rotate( i * 90, [0, 0, 1])
    translate([0, 8.5, -1])
    m3Hole();
  }  

}

