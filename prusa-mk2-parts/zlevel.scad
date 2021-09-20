$fn=100;

divetCount=16;

difference() {

  // main disc
  cylinder(h=2.4, d=20);

  // m3 nut hole
  translate([0, 0, 0.3])
  cylinder($fn=6, h=3, d=6.5);

  // grip divet holes
  for ( i = [0 : divetCount] ){
    rotate( i * 360/divetCount, [0, 0, 1])
    translate([0, 10.8, -1])
    cylinder(h=10, d=3);
  }
  
  // m3 bolt hole
  translate([0, 0, -1])
  cylinder(h=10, d=3.1);

}
