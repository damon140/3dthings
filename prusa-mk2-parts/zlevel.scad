$fn=100;

divetCount=10;

difference() {

  // main disc
  cylinder(h=2, d=12);

  // m3 nut hole
  translate([0, 0, 0.2])
  cylinder($fn=6, h=3, d=5.7);

  // grip divets
  for ( i = [0 : divetCount] ){
    rotate( i * 360/divetCount, [0, 0, 1])
    translate([0, 7, -1])
    cylinder(h=10, d=3);
  }
  
  // m3 hole
  translate([0, 0, -1])
  cylinder(h=10, d=3.1);

}
