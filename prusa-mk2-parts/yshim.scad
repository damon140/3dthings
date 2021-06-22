$fn=100;

// FIXME: Damon add vars

difference() {

  union() {
    cylinder(h=7, r=11);
    cylinder(h=2, r=18);
  }

  translate([0, 0, -1])
  cylinder(h=9, r=8.5);
}

