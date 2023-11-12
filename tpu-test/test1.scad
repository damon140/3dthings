

$fn=20;

height=46;

module bumps(height, offset) {
  translate([0, 0, height])
  for ( i = [0 : 10] ){
    rotate( i * (360/10) + offset, [0, 0, 1])
    translate([0, 31.5, 0])
    sphere(r = 12);
  }     
}


difference(){
  cylinder(d = 45, h = height);
  bumps(10, 0);
  bumps(22, 18);
  bumps(36, 10);
}

translate([-40, 0, 0])
cube([80, 4, height]);