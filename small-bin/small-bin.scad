$fn=200;

length = 200;
width= 150;
height = 170;
thickness = 2.5;
zzz = 20;

translate([10, 10, 0]){
    difference() {
        dBox(length, width, height, zzz);
        halfThickness = thickness / 2;
        translate([halfThickness,halfThickness,1]) {
            dBox(length-thickness, width-thickness, height, zzz); 
        }
    }
}

//dBox(length, width, height, zzz); 
    
module dBox(length, width, height, zzz)
{    
  halfHeight = height / 2;
  halfWidth = width / 2;
  halfLength = length / 2;
    
  zzz2 = 2 * zzz;
    
  difference() {
    
    cube(size=[length, width, height]);

    translate([0, 0, halfHeight])
    rotate([0, 0, 45])
    cube([zzz, zzz, height + 2], center=true);

    translate([0, width, halfHeight])
    rotate([0, 0, 45])
    cube([zzz, zzz, height + 2], center=true);

    translate([length, width, halfHeight])
    rotate([0, 0, 45])
    cube([zzz, zzz, height + 2], center=true);
    
    translate([length, 0, halfHeight])
    rotate([0, 0, 45])
    cube([zzz, zzz, height + 2], center=true);
      
     
    translate([length, halfWidth, 0])
    rotate([0, 45, 0])
    cube([zzz, width, zzz], center=true);
    
    translate([0, halfWidth, 0])
    rotate([0, 45, 0])
    cube([zzz, width, zzz], center=true);
  
    translate([halfLength, 0, 0])
    rotate([45, 0, 0])
    cube([length, zzz, zzz], center=true);
  
    translate([halfLength, width, 0])
    rotate([45, 0, 0])
    cube([length, zzz, zzz], center=true);
  }
}
