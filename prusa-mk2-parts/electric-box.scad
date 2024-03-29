
$fn=100;

module insideBox() {
    
  union() {  
    // main shape
    translate([-1,0,0])
    cube([48,108,99]);
  
    // side shelf cutout
    translate([-3,0,78])
    cube([2,110,21]);
      
    // back shelf cutout
    translate([-3,80,78])
    cube([50,30,21]);
      
    // switch hole
    translate([0, 55 - (48.5/2), 14.5])
    cube([60,48.5,27.5]);
      
    // switch screw holes
    translate([40,55,8.75])
    rotate([0,90,0])
    cylinder(h=20, r1=1.5, r2=1.5);
        
    translate([40,55,48.25])
    rotate([0,90,0])
    cylinder(h=20, r1=1.5, r2=1.5);
    
    // bottom case screw hold
    translate([23,10,10])
    rotate([90,0,0])
    cylinder(h=20, r1=1.5, r2=1.5);

    // top case screw holes
    translate([33,10,65])
    rotate([90,0,0])
    cylinder(h=20, r1=1.5, r2=1.5);

    translate([13,10,65])
    rotate([90,0,0])
    cylinder(h=20, r1=1.5, r2=1.5);
    
    // cable inlet/ outlet hole
    /*
    translate([-10,10,20])
    rotate([90,0,90])
    cylinder(h=20, r1=7, r2=7);
    */
    translate([-10,9,6])
    rotate([90, 0 , 90])
    hull() {
      cylinder(h=20, r1=2.5, r2=2.5);
      translate([20,0,0])
      cylinder(h=20, r1=2.5, r2=2.5);
    }
  }
};

module screwPocket() {
      
  difference() {
    translate([0, 0, -1])
    cube([5, 10, 11]);
    
    // m3 5.8 width to make it stand point down
    // 3mm to centre when point is down
    translate([2, 2, 2.3])
    cube([3.2, 6, 8]);
      
    // cut underhang 45 degree
    translate([1, -1, -4])
    color([1,0,1])
    rotate([0, -45, 0])
    translate([0, 0, -3])
    cube([5, 12, 15]);  
  
    // rear bolt through hole
    translate([-1, 5, 5])
    rotate([0, 90, 0])
    color([1,0,1])
    cylinder(h=5, r1=1.7, r2=1.7);
      
  }
};

// box inside
translate([90,0,0])
insideBox();

// electric box
translate([-25,-55,0]) { 
  difference() {
    translate([-1, -1, 0])
    cube([55,114,96]);
    
    translate([4,1,1])
    insideBox();
  }
  
  
  // m3 screw pocket 1
  translate([46, 51, 4.75])
  screwPocket();
  
  // m3 screw pocket 2
  translate([46, 51, 44.27])
  screwPocket();
}

