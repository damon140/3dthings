
$fn=300;

footRodDiameter=9.25;

module innerChannel() {
  // make a cylinder inner
  union() {
    translate([0,0, -1.1])
    cylinder(h=17, 
      d=footRodDiameter, 
      center=true);

    // half sphere for printing
    translate([0,0,7])
    rotate([0,90,0])
    difference() {
      rad=4.6;
     sphere(r=rad);
      translate([rad*2.5,0,0])
      cube(rad*5, center=true);
    }
  }
}

rotate([180,0,0])
union() {

  // make a cut sphere
  translate([0,0, -0.6])
  difference() {
    sphere(r=10.8);
  
    translate([0,0,-3.5])
    cube(size=23.25, center=true);
  }

  difference() {
    // make a conical outter
    cylinder(h=15,
      d1=footRodDiameter+1, 
      d2=footRodDiameter+6, 
      center=true);
    translate([0,0,-4])
    innerChannel();  
  }
}

