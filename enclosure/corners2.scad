



// 40 - 3.4 = 36.6
// 42 is circumcircle of above

module tri() {
  difference() {
    cylinder($fn=3, h=30, d=42);
      
    // make hollow
    translate([0,0,-1])
    cylinder($fn=3, h=35, d=28);
      
    // round corners
    difference() {
      cylinder($fn=200, h=32, d=42);
      cylinder($fn=200, h=32, d=36);
    }
    
  }
  
}

translate([-32, 0, 10])
rotate([0,0,90])
rotate([90,0,])
rotate([0,0,-30])
tri();

translate([0, 32, 10])
rotate([90,0,])
rotate([0,0,-30])
tri();


translate([0, 0, -20])
rotate([0,0,15])
tri();













