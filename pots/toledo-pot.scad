




$fn=50;

difference() {

  // main
  minkowski()
  {
    cube([10,10,12]);
    cylinder(r=2,h=1);
  }

  // pot hole
  translate([0.5, 0.5, 1])
  minkowski()
  {
    cube([9,9,12]);
    cylinder(r=1.8,h=1);
  }

  //  Birds of Paradise Personal use Regular
  // text
  translate([11.5,0,5])
  rotate([90,0,90])
  text(text="Toledo", size=2);
  
  // drainage holes
  
}


cylinder(w=2, h=15);
cylinder(w=2, h=15);
cylinder(w=2, h=15);

cylinder(w=2, h=15);
cylinder(w=2, h=15);
cylinder(w=2, h=15);

cylinder(w=2, h=15);
cylinder(w=2, h=15);
cylinder(w=2, h=15);

