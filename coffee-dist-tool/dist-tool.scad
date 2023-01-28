
module needle() {
  cylinder($fn=10, h=40, d=1.25); 
  translate([0, 0, 40])
  cylinder($fn=10, h=30, d=2.75);
}

module needles() {
  for(i = [1 : 8])
    rotate(i * 45)
      translate([0, 13])
        needle();

  for(i = [1 : 3])
    rotate(i * 120)
      translate([0, 5])
        needle();
}

difference() {

  translate([0, 0, 35])
  union() {
    cylinder($fn=6, h=12, d=40, center=false);
      
    // TODO: put a hole in here
    difference() {
      cylinder($fn=16, h=37, d=5, center=false);
      translate([0, 0, 20])
      cylinder($fn=16, h=50, d=2.75, center=false);
    }
  }

/*
  translate([0, 0, 69])
  cylinder($fn=6, h=50, d=35, center=false);
*/
    
  needles();
}

// lidy thingy
translate([50, 0, 0])
difference() {
  cylinder($fn=6, h=5, d=40, center=false);
  cylinder($fn=16, h=50, d=2.95, center=false);
}
