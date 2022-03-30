$fn=50;

difference() {

  // main
  minkowski()
  {
    cube([10,10,12]);
    cylinder(r=2,h=1);
  }

  // may be better as two hulls?
  // pot hole
  translate([0.5, 0.5, 1])
  minkowski()
  {
    cube([9,9,12]);
    cylinder(r=1.7,h=1);
  }


  // text
  translate([11.81,0,5])
  rotate([90,0,90])
    linear_extrude(5)
  // install via admin mode explorer to get it into c:\windows\fonts
  text(text="Toledo", font="Birds of Paradise Personal use",size=3);
  
  // drainage holes
  translate([3, 3 ,-1])
  cylinder(d=1, h=15);

  translate([5, 7 ,-1])
  cylinder(d=1, h=15);

  translate([7, 4 ,-1])
  cylinder(d=1, h=15);  
}




