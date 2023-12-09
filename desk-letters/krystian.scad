

translate([0, 17, 0])
union(){  
  translate([10, 3, 0])
  linear_extrude(height=3)
  text("Krystian", 22, "Cascadia Code Semibold");
}

translate([10,10, 0])
difference() {
  hull(){
    translate([0, 0, 0])
    cylinder(r=10, h=8);

    translate([140, 0, 0])
    cylinder(r=10, h=8);
  }

  hull(){
    translate([00, 0, -1])
    cylinder(r=7.5, h=20);

    translate([140, 0, 0])
    cylinder(r=7.5, h=20);
  }
}


