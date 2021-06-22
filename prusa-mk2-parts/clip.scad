

union () {
  // 
  translate([-1,0,0])
  cube([2,25,25]);
    
  // side shelf
  translate([0,0,23])
  cube([25,25,2]);
      
  // top slab
  translate([-1,0,24])
  cube([25,2,15]);
}


module m3Rod() {
  $fn = 100;    
  cylinder(h=20, r=1.5);  
}


translate([50, 0, 30])
union() {
  translate([0,10,0])
  rotate([90,0,0])
  m3Rod();

  translate([-10,10,0])
  rotate([90,0,0])
  m3Rod();

  translate([-20,0,10])
  rotate([90,0,90])    
  m3Rod();
}


