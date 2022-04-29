

// 0.6 3mm
// 40 + 30

module needle() {
  cylinder($fn=10, h=40, d=1); 
  translate([0, 0, 30])
  cylinder($fn=10, h=30, d=3);
}


for(i = [1 : 8])
  rotate(i * 45)
    translate([0, 20])
      needle();

        
/*
diameter = 34.0;
linear_extrude(10)
    difference() {
        circle(d = diameter + 10);

        for(i = [1 : 8])
           rotate(i * 40)
                translate([0, diameter / 2])
                    circle(d = 6);
    }
*/



// main body
difference() {

  cylinder($fn=6, h=50, d=40, center=false);

  translate([0, 0, 2])
  cylinder($fn=6, h=50, d=35, center=false);
    
  
}





