

module triangle() {
  translate([0.5,5,3])
  rotate ([00,-90,00])
  difference() {
    cylinder(r=6, h=1.5, $fn=3);
    translate([0,0,-1]) cylinder(r=4.5, h=3, $fn=3);
  }
}


module edge() {
  for ( i = [0 : 5] ){
    translate([0, 10*i, 0])
    triangle();
  }
  

  translate([0,0,0])
  cylinder(h = 8.66, r=0.75, $fn=20);
  
  translate([0,60,0])
  cylinder(h = 8.66, r=0.75, $fn=20);

  translate([-0.75,0,7.66+0.5])
  cube([1.5,60.66,1.5]);  
}

//edge();

module hexagon() {
    
  // For calculations of r for hexagon, see
  // https://www.omnicalculator.com/math/hexagon
  for ( i = [0 : 5] ){
    rotate([0, 0, 60 * i])
    translate([-51.96, -30, 0])
    edge();
  } 
}

hexagon();
