
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

// box inside
translate([90,0,0])
insideBox();

// electric box
translate([-25,-55,0]) { 
  difference() {
    cube([52,112,96]);
      
    translate([4,1,1])
    insideBox();
  }
}

